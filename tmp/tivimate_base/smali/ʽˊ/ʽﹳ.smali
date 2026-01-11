.class public final Lʽˊ/ʽﹳ;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lʽˊ/ʻٴ;

.field public ⁱˊ:Landroid/content/res/ColorStateList;

.field public ﹳٴ:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Lʽˊ/ʻٴ;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lʽˊ/ʽﹳ;->ʽ:Lʽˊ/ʻٴ;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lʽˊ/ʽﹳ;->ﹳٴ()V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lʽˊ/ʽﹳ;->ʽ:Lʽˊ/ʻٴ;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p3, Lʽˊ/ʻٴ;->ᵎˊ:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget p3, p3, Lʽˊ/ʻٴ;->ᵎˊ:I

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object p3, p0, Lʽˊ/ʽﹳ;->ⁱˊ:Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lʽˊ/ʽﹳ;->ﹳٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lʽˊ/ʽﹳ;->ⁱˊ:Landroid/content/res/ColorStateList;

    invoke-direct {p3, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p1
.end method

.method public final ﹳٴ()V
    .locals 9

    .prologue
    iget-object v0, p0, Lʽˊ/ʽﹳ;->ʽ:Lʽˊ/ʻٴ;

    iget-object v1, v0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const v6, 0x10100a7

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    filled-new-array {v1, v5}, [I

    move-result-object v1

    new-array v7, v5, [I

    new-array v8, v3, [[I

    aput-object v6, v8, v5

    aput-object v7, v8, v2

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v8, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    iput-object v6, p0, Lʽˊ/ʽﹳ;->ⁱˊ:Landroid/content/res/ColorStateList;

    iget v1, v0, Lʽˊ/ʻٴ;->ᵎˊ:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    const v1, 0x1010367

    const v4, -0x10100a7

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const v6, 0x10100a1

    filled-new-array {v6, v4}, [I

    move-result-object v4

    iget-object v6, v0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iget-object v7, v0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    iget v8, v0, Lʽˊ/ʻٴ;->ᵎˊ:I

    invoke-static {v6, v8}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v6

    iget v8, v0, Lʽˊ/ʻٴ;->ᵎˊ:I

    invoke-static {v7, v8}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v7

    iget v0, v0, Lʽˊ/ʻٴ;->ᵎˊ:I

    filled-new-array {v6, v7, v0}, [I

    move-result-object v0

    new-array v6, v5, [I

    const/4 v7, 0x3

    new-array v7, v7, [[I

    aput-object v4, v7, v5

    aput-object v1, v7, v2

    aput-object v6, v7, v3

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v7, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_1
    iput-object v4, p0, Lʽˊ/ʽﹳ;->ﹳٴ:Landroid/content/res/ColorStateList;

    return-void
.end method
