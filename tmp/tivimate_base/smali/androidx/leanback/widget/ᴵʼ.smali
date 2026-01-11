.class public final Landroidx/leanback/widget/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic ⁱˊ:Landroidx/leanback/widget/SearchBar;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    iput p2, p0, Landroidx/leanback/widget/ᴵʼ;->ﹳٴ:I

    iput-object p1, p0, Landroidx/leanback/widget/ᴵʼ;->ⁱˊ:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    iget p1, p0, Landroidx/leanback/widget/ᴵʼ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/leanback/widget/ᴵʼ;->ⁱˊ:Landroidx/leanback/widget/SearchBar;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﹳٴ()V

    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->ᵎˊ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ˑﹳ()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->ᵎˊ:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﾞᴵ()V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->ᵔᵢ(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/ᴵʼ;->ⁱˊ:Landroidx/leanback/widget/SearchBar;

    if-eqz p2, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    new-instance v1, Landroidx/leanback/widget/ʻᵎ;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/leanback/widget/ʻᵎ;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﹳٴ()V

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->ᵔᵢ(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
