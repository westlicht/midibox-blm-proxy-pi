ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

PHONY: ${MAKECMDGOALS}
all $(filter-out all,${MAKECMDGOALS}): .forward
	@# no op
.forward:
	@${MAKE} BR2_EXTERNAL=${ROOT_DIR} --no-print-directory -C buildroot ${MAKECMDGOALS} || true  # known-issue: no error return value
