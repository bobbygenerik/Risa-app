.class public final Landroidx/leanback/widget/ˊᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroidx/leanback/widget/ᴵˊ;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/ᴵˊ;I)V
    .locals 0

    iput p2, p0, Landroidx/leanback/widget/ˊᵔ;->ʾˋ:I

    iput-object p1, p0, Landroidx/leanback/widget/ˊᵔ;->ᴵˊ:Landroidx/leanback/widget/ᴵˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˊᵔ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/leanback/widget/ˊᵔ;->ᴵˊ:Landroidx/leanback/widget/ᴵˊ;

    iget-object v0, v0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/SearchBar;->ᵎˊ:Z

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/ˊᵔ;->ᴵˊ:Landroidx/leanback/widget/ᴵˊ;

    iget-object v0, v0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    check-cast v0, Lⁱʽ/ﹳٴ;

    iget-object v0, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞᵔ/ˉٴ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    instance-of v1, v0, Lʼⁱ/ʽ;

    if-eqz v1, :cond_0

    check-cast v0, Lʼⁱ/ʽ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʼⁱ/ʽ;->ـˆ(Z)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/ˊᵔ;->ᴵˊ:Landroidx/leanback/widget/ᴵˊ;

    iget-object v0, v0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    check-cast v1, Lⁱʽ/ﹳٴ;

    iget-object v1, v1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﾞᵔ/ˉٴ;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lﾞᵔ/ˉٴ;->ʽᐧ(Lﾞᵔ/ˉٴ;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
