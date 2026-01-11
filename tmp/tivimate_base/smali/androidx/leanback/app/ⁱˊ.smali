.class public final Landroidx/leanback/app/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/ᴵᵔ;


# instance fields
.field public final synthetic ⁱˊ:Landroidx/leanback/app/ʽ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/app/ʽ;I)V
    .locals 0

    iput p2, p0, Landroidx/leanback/app/ⁱˊ;->ﹳٴ:I

    iput-object p1, p0, Landroidx/leanback/app/ⁱˊ;->ⁱˊ:Landroidx/leanback/app/ʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroidx/leanback/widget/ʾᵎ;)V
    .locals 3

    .prologue
    iget v0, p0, Landroidx/leanback/app/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Landroidx/leanback/app/ⁱˊ;->ⁱˊ:Landroidx/leanback/app/ʽ;

    iget-object p1, p1, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, p1, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ˑٴ;->ﹳٴ(Z)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/app/ⁱˊ;->ⁱˊ:Landroidx/leanback/app/ʽ;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/ʽ;->ـʻ(Landroidx/leanback/widget/ʾᵎ;)V

    iget-object v1, v0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v2, v1, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_6

    iget-object p1, v1, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ˑٴ;->ﹳٴ(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v1, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    new-instance v2, Landroidx/leanback/widget/ᵎˊ;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/ᵎˊ;-><init>(Landroidx/leanback/widget/ˑٴ;)V

    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/ᵔᵢ;->ʼـ(ILandroidx/leanback/widget/ˎᐧ;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
