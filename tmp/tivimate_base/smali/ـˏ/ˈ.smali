.class public final Lـˏ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lᵎⁱ/ⁱˊ;

.field public ˈ:Lᵎⁱ/ⁱˊ;

.field public ˑﹳ:I

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Lـˏ/ⁱˊ;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    sget-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    iput-object v0, p0, Lـˏ/ˈ;->ʽ:Lᵎⁱ/ⁱˊ;

    iput-object v0, p0, Lـˏ/ˈ;->ˈ:Lᵎⁱ/ⁱˊ;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lـˏ/ˈ;->ˑﹳ:I

    new-instance v0, Lـˏ/ⁱˊ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lـˏ/ⁱˊ;-><init>(Lـˏ/ˈ;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lـˏ/ˈ;->ﹳٴ:Lـˏ/ⁱˊ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lʻʿ/ˈ;

    const/16 v3, 0x1b

    invoke-direct {v1, v3, p0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    new-instance v1, Lـˏ/ʽ;

    invoke-direct {v1, p0}, Lـˏ/ʽ;-><init>(Lـˏ/ˈ;)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ˉˆ(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method
