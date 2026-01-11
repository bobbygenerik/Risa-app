.class public Lˋᵔ/ﹳﹳ;
.super Lˋᵔ/ﹶᐧ;
.source "SourceFile"


# instance fields
.field public ʼᐧ:Lᵎⁱ/ⁱˊ;

.field public ˉˆ:Lᵎⁱ/ⁱˊ;

.field public ᵔﹳ:Lᵎⁱ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lˋᵔ/ﹶᐧ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lˋᵔ/ﹳﹳ;->ˉˆ:Lᵎⁱ/ⁱˊ;

    iput-object p1, p0, Lˋᵔ/ﹳﹳ;->ʼᐧ:Lᵎⁱ/ⁱˊ;

    iput-object p1, p0, Lˋᵔ/ﹳﹳ;->ᵔﹳ:Lᵎⁱ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public ˆʾ()Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ˉˆ:Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ﹳﹳ;->ˉˆ:Lᵎⁱ/ⁱˊ;

    :cond_0
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ˉˆ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ˉʿ(IIII)Lˋᵔ/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    return-object p1
.end method

.method public ᵔᵢ()Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ʼᐧ:Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ﹳﹳ;->ʼᐧ:Lᵎⁱ/ⁱˊ;

    :cond_0
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ʼᐧ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ﹳᐧ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public ﾞʻ()Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ᵔﹳ:Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ﹳﹳ;->ᵔﹳ:Lᵎⁱ/ⁱˊ;

    :cond_0
    iget-object v0, p0, Lˋᵔ/ﹳﹳ;->ᵔﹳ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method
