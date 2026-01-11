.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʽʽ:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ـˆ(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ˆʾ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʽʽ:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    iget-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʽʽ:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʽʽ:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lˉˆ/ٴﹳ;->ﹳٴ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_2
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ᵢˋ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    iput-object p1, v1, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_1
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ᵢˋ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ᵢˋ;

    iput-object p1, v1, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    const/4 p1, 0x1

    iput-boolean p1, v1, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳٴ()V

    :cond_1
    return-void
.end method
