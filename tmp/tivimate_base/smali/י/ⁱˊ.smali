.class public final Lי/ⁱˊ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ᵎﹶ:Lי/ˈ;

.field public final synthetic ᵔᵢ:Landroidx/leanback/widget/picker/Picker;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;III)V
    .locals 0

    iput-object p1, p0, Lי/ⁱˊ;->ᵔᵢ:Landroidx/leanback/widget/picker/Picker;

    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    iput p2, p0, Lי/ⁱˊ;->ˈ:I

    iput p4, p0, Lי/ⁱˊ;->ˑﹳ:I

    iput p3, p0, Lי/ⁱˊ;->ﾞᴵ:I

    iget-object p1, p1, Landroidx/leanback/widget/picker/Picker;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lי/ˈ;

    iput-object p1, p0, Lי/ⁱˊ;->ᵎﹶ:Lי/ˈ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˋˋ/ʼـ;)V
    .locals 1

    check-cast p1, Lי/ʽ;

    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v0, p0, Lי/ⁱˊ;->ᵔᵢ:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lי/ⁱˊ;->ˈ:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lי/ⁱˊ;->ﾞᴵ:I

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    :goto_0
    new-instance v0, Lי/ʽ;

    invoke-direct {v0, p1, p2}, Lי/ʽ;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public final ﹳٴ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lי/ⁱˊ;->ᵎﹶ:Lי/ˈ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, v0, Lי/ˈ;->ʽ:I

    iget v0, v0, Lי/ˈ;->ⁱˊ:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 6

    .prologue
    check-cast p1, Lי/ʽ;

    iget-object v0, p1, Lי/ʽ;->ﹳـ:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lי/ⁱˊ;->ᵎﹶ:Lי/ˈ;

    if-eqz v3, :cond_1

    iget v4, v3, Lי/ˈ;->ⁱˊ:I

    add-int/2addr v4, p2

    iget-object v5, v3, Lי/ˈ;->ˈ:[Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    iget-object v3, v3, Lי/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    aget-object v3, v5, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v0, p0, Lי/ⁱˊ;->ᵔᵢ:Landroidx/leanback/widget/picker/Picker;

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->ᴵˊ:Ljava/util/ArrayList;

    iget v4, p0, Lי/ⁱˊ;->ˑﹳ:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroidx/leanback/widget/ᵔᵢ;->getSelectedPosition()I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, p1, v1, v2}, Landroidx/leanback/widget/picker/Picker;->ﾞᴵ(ILandroid/view/View;ZZ)V

    return-void
.end method
