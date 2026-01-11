.class public final Lˑʿ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑʿ/יـ;


# instance fields
.field public final synthetic ⁱˊ:Ljava/util/ArrayList;

.field public final synthetic ﹳٴ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʿ/ٴﹶ;->ﹳٴ:Landroid/view/View;

    iput-object p2, p0, Lˑʿ/ٴﹶ;->ⁱˊ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˑʿ/ʻٴ;)V
    .locals 0

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    return-void
.end method

.method public final ˈ(Lˑʿ/ʻٴ;)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(Lˑʿ/ʻٴ;)V
    .locals 4

    .prologue
    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    iget-object p1, p0, Lˑʿ/ٴﹶ;->ﹳٴ:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lˑʿ/ٴﹶ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ᵎﹶ(Lˑʿ/ʻٴ;)V
    .locals 0

    invoke-virtual {p0, p1}, Lˑʿ/ٴﹶ;->ʽ(Lˑʿ/ʻٴ;)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 0

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˑʿ/ʻٴ;)V
    .locals 0

    invoke-virtual {p0, p1}, Lˑʿ/ٴﹶ;->ˑﹳ(Lˑʿ/ʻٴ;)V

    return-void
.end method
