.class public final Lʽʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public final ⁱˊ:Lˊﾞ/ˉˆ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(BI)V
    .locals 2

    .prologue
    iput p2, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 p2, 0x2

    const-string v0, "image/bmp"

    const/16 v1, 0x424d

    invoke-direct {p1, v1, p2, v0}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 p2, 0x2

    const-string v0, "image/png"

    const v1, 0x8950

    invoke-direct {p1, v1, p2, v0}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    iput v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lˊﾞ/ʽʽ;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, Lˊﾞ/ʽʽ;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    goto :goto_0

    :cond_0
    new-instance p1, Lʿʽ/ﹳٴ;

    invoke-direct {p1}, Lʿʽ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    :goto_0
    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˑﹳ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    invoke-interface {v0, p1}, Lˊﾞ/ˉˆ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 1

    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    invoke-interface {v0, p1, p2}, Lˊﾞ/ˉˆ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2}, Lˊﾞ/ʽʽ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2}, Lˊﾞ/ʽʽ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(JJ)V
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    invoke-interface {v0, p1, p2, p3, p4}, Lˊﾞ/ˉˆ;->ⁱˊ(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˊﾞ/ʽʽ;->ⁱˊ(JJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˊﾞ/ʽʽ;->ⁱˊ(JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    invoke-interface {v0}, Lˊﾞ/ˉˆ;->ﹳٴ()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 1

    .prologue
    iget v0, p0, Lʽʾ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    invoke-interface {v0, p1}, Lˊﾞ/ˉˆ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lʽʾ/ﹳٴ;->ⁱˊ:Lˊﾞ/ˉˆ;

    check-cast v0, Lˊﾞ/ʽʽ;

    invoke-virtual {v0, p1}, Lˊﾞ/ʽʽ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
