PHPINI   = ./php/lib/php.ini
PECLCMD  = ./php/bin/pecl -c .pearrc
PEARCMD  = ./php/bin/pear -c .pearrc
CURRENT  = $(OPENSHIFT_DEPLOYMENTS_DIR)/current/repo/
EXTDIR   = $(shell ./php/bin/php-config --extension-dir)
EXTNAMES = $(shell $(CURRENT)/.openshift/dep.awk < $(CURRENT)/.openshift/pecl.dep | cut -f1)
VERSIONS = $(shell $(CURRENT)/.openshift/dep.awk < $(CURRENT)/.openshift/pecl.dep | cut -f2)
LIBNAMES = $(shell $(CURRENT)/.openshift/dep.awk < $(CURRENT)/.openshift/pecl.dep | cut -f3)
EXTFILES = $(addprefix $(EXTDIR)/, $(LIBNAMES))

all: ini $(EXTFILES) httpd/conf/httpd.conf
	for ext in $(LIBNAMES); do grep -Eq "^[[:space:]]*extension[[:space:]]*=[[:space:]]*$$ext" $(PHPINI) || echo "extension=$$ext" >> $(PHPINI); done

.PHONY: ini all

$(CURRENT)/public:
	mkdir -p $@

ini: $(PHPINI)
	$(PECLCMD) config-set php_ini $(OPENSHIFT_DATA_DIR)/$(PHPINI)
	$(PEARCMD) config-set php_ini $(OPENSHIFT_DATA_DIR)/$(PHPINI)

$(EXTDIR)/%: | httpd/modules/libphp5.so
	aE=($(EXTNAMES)); aV=($(VERSIONS)); aL=($(LIBNAMES)); \
	for ((i=0; i < $${#aE[@]}; i++)); do \
		if test $* = $${aL[$$i]}; then \
			$(PECLCMD) install $${aE[$$i]}-$${aV[$$i]} || $(PECLCMD) upgrade $${aE[$$i]}-$${aV[$$i]}; \
		fi; \
	done

$(PHPINI): $(CURRENT)/.openshift/php.ini.in
	(echo "; generated file; do not edit"; envsubst < $^) > $@
httpd/conf/httpd.conf: $(CURRENT)/.openshift/httpd.conf.in | $(CURRENT)/public
	(echo "# generated file; do not edit"; envsubst < $^) > $@
