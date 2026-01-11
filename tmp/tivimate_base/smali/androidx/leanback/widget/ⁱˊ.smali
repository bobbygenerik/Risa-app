.class public final Landroidx/leanback/widget/ⁱˊ;
.super Landroidx/leanback/widget/ʿ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Landroidx/leanback/widget/ᵔᵢ;

.field public final synthetic ⁱˊ:Landroidx/leanback/widget/ˎᐧ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/VerticalGridView;ILandroidx/leanback/widget/ˎᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ⁱˊ;->ʽ:Landroidx/leanback/widget/ᵔᵢ;

    iput p2, p0, Landroidx/leanback/widget/ⁱˊ;->ﹳٴ:I

    iput-object p3, p0, Landroidx/leanback/widget/ⁱˊ;->ⁱˊ:Landroidx/leanback/widget/ˎᐧ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lˋˋ/ʼـ;I)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ⁱˊ;->ﹳٴ:I

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/leanback/widget/ⁱˊ;->ʽ:Landroidx/leanback/widget/ᵔᵢ;

    iget-object p2, p2, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object p2, p2, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Landroidx/leanback/widget/ⁱˊ;->ⁱˊ:Landroidx/leanback/widget/ˎᐧ;

    invoke-interface {p2, p1}, Landroidx/leanback/widget/ˎᐧ;->ﹳٴ(Lˋˋ/ʼـ;)V

    :cond_1
    return-void
.end method
