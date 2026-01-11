.class public Lˋᵔ/ˈˏ;
.super Lˋᵔ/ـﹶ;
.source "SourceFile"


# instance fields
.field public ᵔʾ:Lᵎⁱ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lˋᵔ/ـﹶ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lˋᵔ/ˈˏ;->ᵔʾ:Lᵎⁱ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()Lᵎⁱ/ⁱˊ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˋᵔ/ˈˏ;->ᵔʾ:Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ˈˏ;->ᵔʾ:Lᵎⁱ/ⁱˊ;

    :cond_0
    iget-object v0, p0, Lˋᵔ/ˈˏ;->ᵔʾ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ʽ()Lˋᵔ/ᐧﹶ;
    .locals 2

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    return-object v0
.end method

.method public ᵔʾ()Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public ⁱˊ()Lˋᵔ/ᐧﹶ;
    .locals 2

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    return-object v0
.end method

.method public ﹳᐧ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    iput-object p1, p0, Lˋᵔ/ˈˏ;->ᵔʾ:Lᵎⁱ/ⁱˊ;

    return-void
.end method
