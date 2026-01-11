.class public final Lˑʿ/ʾˋ;
.super Lˑʿ/ـˆ;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Lˑʿ/ʻٴ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˑʿ/ʾˋ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lˑʿ/ʻٴ;I)V
    .locals 0

    iput p2, p0, Lˑʿ/ʾˋ;->ﹳٴ:I

    iput-object p1, p0, Lˑʿ/ʾˋ;->ⁱˊ:Lˑʿ/ʻٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Lˑʿ/ʻٴ;)V
    .locals 1

    .prologue
    iget p1, p0, Lˑʿ/ʾˋ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lˑʿ/ʾˋ;->ⁱˊ:Lˑʿ/ʻٴ;

    check-cast p1, Lˑʿ/ᴵˊ;

    iget-boolean v0, p1, Lˑʿ/ᴵˊ;->ˈˏ:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lˑʿ/ʻٴ;->ʼˈ()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lˑʿ/ᴵˊ;->ˈˏ:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ(Lˑʿ/ʻٴ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˑʿ/ʾˋ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lˑʿ/ʾˋ;->ⁱˊ:Lˑʿ/ʻٴ;

    check-cast v0, Lˑʿ/ᴵˊ;

    iget-object v1, v0, Lˑʿ/ᴵˊ;->ʻᵎ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lˑʿ/ᴵˊ;->ʼʼ()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lˑʿ/ʽﹳ;->ˏי:Lˊˋ/ⁱˊ;

    invoke-virtual {v0, p1}, Lˑʿ/ʻٴ;->ᴵᵔ(Lˑʿ/ʽﹳ;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˑʿ/ʻٴ;->ʼˈ:Z

    sget-object p1, Lˑʿ/ʽﹳ;->יـ:Lˊˋ/ⁱˊ;

    invoke-virtual {v0, p1}, Lˑʿ/ʻٴ;->ᴵᵔ(Lˑʿ/ʽﹳ;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Lˑʿ/ʻٴ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˑʿ/ʾˋ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lˑʿ/ʾˋ;->ⁱˊ:Lˑʿ/ʻٴ;

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ᵎˊ()V

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    return-void

    :pswitch_1
    iget-object v0, p0, Lˑʿ/ʾˋ;->ⁱˊ:Lˑʿ/ʻٴ;

    check-cast v0, Lˑʿ/ᴵˊ;

    iget v1, v0, Lˑʿ/ᴵˊ;->ـﹶ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lˑʿ/ᴵˊ;->ـﹶ:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʿ/ᴵˊ;->ˈˏ:Z

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ʼᐧ()V

    :cond_0
    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
