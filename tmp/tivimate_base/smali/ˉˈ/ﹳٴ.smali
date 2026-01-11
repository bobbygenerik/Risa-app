.class public final Lˉˈ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;


# instance fields
.field public final ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-object v0
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final ˈ()V
    .locals 1

    iget-object v0, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    iget-object v0, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    return-void
.end method

.method public final ⁱˊ()I
    .locals 2

    iget-object v0, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lˉˈ/ﹳٴ;->ʾˋ:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/2addr v1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˈ(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
