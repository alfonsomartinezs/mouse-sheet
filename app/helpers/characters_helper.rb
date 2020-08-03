module CharactersHelper
  def character_params
    params.require(:character).permit(:name,:age,:home,:fur_color,:rank,:cloak_color,:parents,:senior_artisan,:mentor,:friend,:enemy,:belief,:goal,:instinct,:nature,:will,:health,:resources,:circles)
  end
end
