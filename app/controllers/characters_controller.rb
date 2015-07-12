class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    #selects the guns our character will have
    @guns = Gun.all
    a = [1, 2, 2].sample #generates a weighted selection for the number of guns the character will have
    if a == 1
      @character.hp += 2
      @character.speed += 50
    end
    gunnage = @projectiles.sample(a)
    gunnage.uniq!.each { |el| @character << el }

    #selects the abilities our character will have
    @abilities = Ability.all
    b = [2, 2, 2, 2, 2, 2, 2, 1, 1, 0].sample #generates a weighted selection for the number of powers the character will have
    if b == 0
      @character.hp += 3
      @character.power = 0
    elsif b == 1
      @character.hp += 1
      @character.power += 1
      @character.power_regen += 1
    powers = @projectiles.sample(a)
    powers.uniq!.each { |el| @character << el }

    #selects the title the character will have
    @titles = Title.all
    @character << @titles.sample

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :exp, :hp, :hp_regen, :power, :power_regen, :speed, :size, :move_type, :element, :color_schema, :emblem, :functions, :sprite, :sprite_idle, :sprite_death, :sprite_hat, :sprite_jacket, :sprite_shoes, :sprite_scarf, :user_id, :prime_gun_id, :secondary_gun_id, :prime_ability_id, :secondary_ability_id)
    end
end
