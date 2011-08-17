class EsiController < ApplicationController
  can_edit_on_the_spot

def form7
  @esi_master = EsiMaster.all
  @esi_form7 = EsiMaster.find_by_sql('select * from esi_masters where id=1')
logger.info "EOEHEOQWHOE" + @esi_form7.inspect
end


end
