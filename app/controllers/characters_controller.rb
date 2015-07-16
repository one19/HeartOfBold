class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  def ids
    characters = Character.all
    @ids = []
    characters.each { |el| @ids.push el.id }
  end

  def user
    @character = Character.all.sample
    @gun = Gun.all.sample
    @ability = Ability.all.sample
    @projectiles = Projectile.all.sample(2)
    @title = Title.all.sample
    @biome = Biome.first
    @rooms = Room.all
  end

  def enemies
    @character = Character.all.sample(2)
    @gun = Gun.all.sample(2)
    @ability = Ability.all.sample(2)
    @projectiles = Projectile.all.sample(2)
    @title = Title.all.sample(2)
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
