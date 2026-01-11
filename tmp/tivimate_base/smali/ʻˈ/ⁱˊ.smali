.class public final Lʻˈ/ⁱˊ;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lⁱ/ﹳٴ;


# direct methods
.method public constructor <init>(Lⁱ/ﹳٴ;)V
    .locals 0

    iput-object p1, p0, Lʻˈ/ⁱˊ;->ﹳٴ:Lⁱ/ﹳٴ;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ⁱˊ;->ﹳٴ:Lⁱ/ﹳٴ;

    iget-object v0, v0, Lⁱ/ﹳٴ;->ⁱˊ:Lⁱ/ʽ;

    iget-object v0, v0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʻˈ/ⁱˊ;->ﹳٴ:Lⁱ/ﹳٴ;

    iget-object v0, v0, Lⁱ/ﹳٴ;->ⁱˊ:Lⁱ/ʽ;

    iget-object v1, v0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lⁱ/ʽ;->ʼˈ:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method
