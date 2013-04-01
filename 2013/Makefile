SHELL := /bin/bash

.PHONY: all clean zip

# $(1): Placeholder text
# $(2): Text to replace placeholder with
replace_and_export = inkscape -A $@ <(sed 's/$(1)/$(2)/' $<)

all: position special participation

position: position_first.pdf position_second.pdf position_third.pdf

special: special_rookie.pdf special_committee.pdf special_image.pdf special_movement.pdf special_online.pdf

participation: participation_blank.pdf participation_example.pdf



position_first.pdf: position.svg
	$(call replace_and_export,POSITION,First)

position_second.pdf: position.svg
	$(call replace_and_export,POSITION,Second)

position_third.pdf: position.svg
	$(call replace_and_export,POSITION,Third)


special_rookie.pdf: special.svg
	$(call replace_and_export,AWARD_TYPE,Rookie Award)

special_committee.pdf: special.svg
	$(call replace_and_export,AWARD_TYPE,Committee Award)

special_image.pdf: special.svg
	$(call replace_and_export,AWARD_TYPE,Team Image Award)

special_movement.pdf: special.svg
	$(call replace_and_export,AWARD_TYPE,First Movement Award)

special_online.pdf: special.svg
	$(call replace_and_export,AWARD_TYPE,Online Presence Award)


participation_blank.pdf: participation.svg
	$(call replace_and_export,COMPETITOR NAME,)

participation_example.pdf: participation.svg
	$(call replace_and_export,COMPETITOR NAME,Richard Paul Barlow)

zip: all readme.txt speculum.ttf
	zip srobo_2013_certificates.zip position_*.pdf special_*.pdf participation_*.pdf readme.txt speculum.ttf

clean:
	rm -fr participation_*.pdf position_*.pdf special_*.pdf
