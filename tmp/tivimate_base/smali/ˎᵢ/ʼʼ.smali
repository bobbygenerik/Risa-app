.class public final Lˎᵢ/ʼʼ;
.super Lˎᵢ/ʾˋ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lˎᵢ/ʼʼ;->ﹳٴ:I

    iput-object p1, p0, Lˎᵢ/ʼʼ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lˎᵢ/ʾˋ;Lˎᵢ/ﹳᐧ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˎᵢ/ʼʼ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˎᵢ/ʼʼ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ˈ(Lˊᐧ/ᵎﹶ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˎᵢ/ʼʼ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˎᵢ/ʼʼ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʽᴵ/ﾞʻ;

    new-instance v1, Lʽᴵ/ᵔﹳ;

    invoke-direct {v1, p1}, Lʽᴵ/ᵔﹳ;-><init>(Lˊᐧ/ᵎﹶ;)V

    iget-object p1, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ʾˋ;

    invoke-virtual {v0, p1}, Lˎᵢ/ʾˋ;->ˈ(Lˊᐧ/ᵎﹶ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʼˎ;

    invoke-interface {p1, v0}, Lˊᐧ/ᵎﹶ;->ﾞʻ(Lˊᐧ/ʼˎ;)Lˊᐧ/ᵎﹶ;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()Lˎᵢ/ﹳᐧ;
    .locals 1

    .prologue
    iget v0, p0, Lˎᵢ/ʼʼ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lﹳﹶ/ⁱˊ;->ʽʽ:Lˎᵢ/ﹳᐧ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ﹳᐧ;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ﹳᐧ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()J
    .locals 2

    .prologue
    iget v0, p0, Lˎᵢ/ʼʼ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lˎᵢ/ʾˋ;->ﹳٴ()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ʾˋ;

    invoke-virtual {v0}, Lˎᵢ/ʾˋ;->ﹳٴ()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lˎᵢ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
