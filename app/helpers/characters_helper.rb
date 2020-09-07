module CharactersHelper
  def character_params
    params.require(:character).permit(:name,:age,:home,:fur_color,:rank,:cloak_color,:parents,:parent_profession,:senior_artisan,:artisan_profession,:mentor,:mentor_profession,:friend,:enemy,:belief,:goal,:instinct,:nature,:will,:health,:resources,:circles,:image,:persona,:fate,:is_angry, :is_hungry, :is_sick, :is_tired, :is_injured, :private)
  end
end
