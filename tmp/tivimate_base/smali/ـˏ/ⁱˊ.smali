.class public final Lـˏ/ⁱˊ;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:Landroid/view/ViewGroup;

.field public final synthetic ᴵˊ:Lـˏ/ˈ;


# direct methods
.method public constructor <init>(Lـˏ/ˈ;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lـˏ/ⁱˊ;->ᴵˊ:Lـˏ/ˈ;

    iput-object p3, p0, Lـˏ/ⁱˊ;->ʾˋ:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lـˏ/ⁱˊ;->ᴵˊ:Lـˏ/ˈ;

    iget-object v0, p1, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v1, p0, Lـˏ/ⁱˊ;->ʾˋ:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lـˏ/ˈ;->ˑﹳ:I

    if-eq v2, v1, :cond_2

    iput v1, p1, Lـˏ/ˈ;->ˑﹳ:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـˏ/ﹳٴ;

    iget-object v1, v1, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method
