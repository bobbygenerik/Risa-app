.class public final Lˎᵢ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:Lˎᵢ/ʾᵎ;

.field public final ˆﾞ:Lcom/bumptech/glide/ʼˎ;

.field public final ˈʿ:Z

.field public final ˈٴ:I

.field public final ˉٴ:Lˎᵢ/ʽʽ;

.field public final ˊʻ:Lˎᵢ/ˉˆ;

.field public final ˑٴ:Z

.field public final ٴʼ:Lˎᵢ/ʽʽ;

.field public final ٴᵢ:Lˎᵢ/ᴵᵔ;

.field public final ᴵˊ:Lˎᵢ/ـˆ;

.field public final ᴵᵔ:Lˎᵢ/ᵔʾ;

.field public final ᵎˊ:J

.field public final ᵎⁱ:Lˎᵢ/ʽʽ;

.field public final ᵔי:J

.field public final ᵔٴ:Lˎᵢ/ˉٴ;


# direct methods
.method public constructor <init>(Lˎᵢ/ʾᵎ;Lˎᵢ/ـˆ;Ljava/lang/String;ILˎᵢ/ᵔʾ;Lˎᵢ/ˉˆ;Lˎᵢ/ᴵᵔ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;JJLcom/bumptech/glide/ʼˎ;Lˎᵢ/ˉٴ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iput-object p2, p0, Lˎᵢ/ʽʽ;->ᴵˊ:Lˎᵢ/ـˆ;

    iput-object p3, p0, Lˎᵢ/ʽʽ;->ʽʽ:Ljava/lang/String;

    iput p4, p0, Lˎᵢ/ʽʽ;->ˈٴ:I

    iput-object p5, p0, Lˎᵢ/ʽʽ;->ᴵᵔ:Lˎᵢ/ᵔʾ;

    iput-object p6, p0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    iput-object p7, p0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    iput-object p8, p0, Lˎᵢ/ʽʽ;->ˉٴ:Lˎᵢ/ʽʽ;

    iput-object p9, p0, Lˎᵢ/ʽʽ;->ᵎⁱ:Lˎᵢ/ʽʽ;

    iput-object p10, p0, Lˎᵢ/ʽʽ;->ٴʼ:Lˎᵢ/ʽʽ;

    iput-wide p11, p0, Lˎᵢ/ʽʽ;->ᵎˊ:J

    iput-wide p13, p0, Lˎᵢ/ʽʽ;->ᵔי:J

    iput-object p15, p0, Lˎᵢ/ʽʽ;->ˆﾞ:Lcom/bumptech/glide/ʼˎ;

    move-object/from16 p1, p16

    iput-object p1, p0, Lˎᵢ/ʽʽ;->ᵔٴ:Lˎᵢ/ˉٴ;

    const/16 p1, 0xc8

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-gt p1, p4, :cond_0

    const/16 p1, 0x12c

    if-ge p4, p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lˎᵢ/ʽʽ;->ˈʿ:Z

    const/16 p1, 0x133

    if-eq p4, p1, :cond_1

    const/16 p1, 0x134

    if-eq p4, p1, :cond_1

    packed-switch p4, :pswitch_data_0

    move p2, p3

    :cond_1
    :pswitch_0
    iput-boolean p2, p0, Lˎᵢ/ʽʽ;->ˑٴ:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ᴵˊ:Lˎᵢ/ـˆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˎᵢ/ʽʽ;->ˈٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v1, v1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()I
    .locals 1

    iget v0, p0, Lˎᵢ/ʽʽ;->ˈٴ:I

    return v0
.end method

.method public final ᵎﹶ()Lˎᵢ/ᴵˊ;
    .locals 3

    new-instance v0, Lˎᵢ/ᴵˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lˎᵢ/ᴵˊ;->ʽ:I

    sget-object v1, Lˎᵢ/ᴵᵔ;->ʾˋ:Lˎᵢ/ˈٴ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    sget-object v1, Lˎᵢ/ˉٴ;->ᵔﹳ:Lˎᵢ/ⁱˊ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ᵔʾ:Lˎᵢ/ˉٴ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ᴵˊ:Lˎᵢ/ـˆ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ⁱˊ:Lˎᵢ/ـˆ;

    iget v1, p0, Lˎᵢ/ʽʽ;->ˈٴ:I

    iput v1, v0, Lˎᵢ/ᴵˊ;->ʽ:I

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ʽʽ:Ljava/lang/String;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ˈ:Ljava/lang/String;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ᴵᵔ:Lˎᵢ/ᵔʾ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ˑﹳ:Lˎᵢ/ᵔʾ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v1}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ˉٴ:Lˎᵢ/ʽʽ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ᵔᵢ:Lˎᵢ/ʽʽ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ᵎⁱ:Lˎᵢ/ʽʽ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ʼˎ:Lˎᵢ/ʽʽ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ٴʼ:Lˎᵢ/ʽʽ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ˆʾ:Lˎᵢ/ʽʽ;

    iget-wide v1, p0, Lˎᵢ/ʽʽ;->ᵎˊ:J

    iput-wide v1, v0, Lˎᵢ/ᴵˊ;->ٴﹶ:J

    iget-wide v1, p0, Lˎᵢ/ʽʽ;->ᵔי:J

    iput-wide v1, v0, Lˎᵢ/ᴵˊ;->ﾞʻ:J

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ˆﾞ:Lcom/bumptech/glide/ʼˎ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ˉʿ:Lcom/bumptech/glide/ʼˎ;

    iget-object v1, p0, Lˎᵢ/ʽʽ;->ᵔٴ:Lˎᵢ/ˉٴ;

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ᵔʾ:Lˎᵢ/ˉٴ;

    return-object v0
.end method
