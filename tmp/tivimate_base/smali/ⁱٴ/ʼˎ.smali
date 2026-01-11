.class public final synthetic Lⁱٴ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ʽʽ:Lˊʼ/יـ;

.field public final synthetic ʾˋ:Lˊʼ/ᵔﹳ;

.field public final synthetic ˈٴ:Lˊᐧ/ـˆ;

.field public final synthetic ˉٴ:Lˊʼ/ˏי;

.field public final synthetic ˊʻ:Lˊʼ/יـ;

.field public final synthetic ٴᵢ:Lˊʼ/ˏי;

.field public final synthetic ᴵˊ:J

.field public final synthetic ᴵᵔ:Lˊʼ/יـ;

.field public final synthetic ᵎⁱ:Lˊʼ/ˏי;


# direct methods
.method public synthetic constructor <init>(Lˊʼ/ᵔﹳ;JLˊʼ/יـ;Lˊᐧ/ـˆ;Lˊʼ/יـ;Lˊʼ/יـ;Lˊʼ/ˏי;Lˊʼ/ˏי;Lˊʼ/ˏי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱٴ/ʼˎ;->ʾˋ:Lˊʼ/ᵔﹳ;

    iput-wide p2, p0, Lⁱٴ/ʼˎ;->ᴵˊ:J

    iput-object p4, p0, Lⁱٴ/ʼˎ;->ʽʽ:Lˊʼ/יـ;

    iput-object p5, p0, Lⁱٴ/ʼˎ;->ˈٴ:Lˊᐧ/ـˆ;

    iput-object p6, p0, Lⁱٴ/ʼˎ;->ᴵᵔ:Lˊʼ/יـ;

    iput-object p7, p0, Lⁱٴ/ʼˎ;->ˊʻ:Lˊʼ/יـ;

    iput-object p8, p0, Lⁱٴ/ʼˎ;->ٴᵢ:Lˊʼ/ˏי;

    iput-object p9, p0, Lⁱٴ/ʼˎ;->ˉٴ:Lˊʼ/ˏי;

    iput-object p10, p0, Lⁱٴ/ʼˎ;->ᵎⁱ:Lˊʼ/ˏי;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lⁱٴ/ʼˎ;->ˈٴ:Lˊᐧ/ـˆ;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    invoke-virtual {p2, v2, v3}, Lˊᐧ/ـˆ;->skip(J)V

    sub-long/2addr v0, v2

    long-to-int p1, v0

    new-instance v0, Lⁱٴ/ᵔᵢ;

    iget-object v1, p0, Lⁱٴ/ʼˎ;->ٴᵢ:Lˊʼ/ˏי;

    iget-object v2, p0, Lⁱٴ/ʼˎ;->ˉٴ:Lˊʼ/ˏי;

    iget-object v3, p0, Lⁱٴ/ʼˎ;->ᵎⁱ:Lˊʼ/ˏי;

    invoke-direct {v0, v1, p2, v2, v3}, Lⁱٴ/ᵔᵢ;-><init>(Lˊʼ/ˏי;Lˊᐧ/ـˆ;Lˊʼ/ˏי;Lˊʼ/ˏי;)V

    invoke-static {p2, p1, v0}, Lⁱٴ/ⁱˊ;->ﾞᴵ(Lˊᐧ/ᵔᵢ;ILᴵⁱ/ʼᐧ;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: NTFS extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lⁱٴ/ʼˎ;->ʾˋ:Lˊʼ/ᵔﹳ;

    iget-boolean v3, p1, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    if-nez v3, :cond_7

    iput-boolean v2, p1, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    iget-wide v2, p0, Lⁱٴ/ʼˎ;->ᴵˊ:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_6

    iget-object p1, p0, Lⁱٴ/ʼˎ;->ʽʽ:Lˊʼ/יـ;

    iget-wide v0, p1, Lˊʼ/יـ;->ʾˋ:J

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lˊᐧ/ـˆ;->ᵎﹶ()J

    move-result-wide v0

    :cond_3
    iput-wide v0, p1, Lˊʼ/יـ;->ʾˋ:J

    iget-object p1, p0, Lⁱٴ/ʼˎ;->ᴵᵔ:Lˊʼ/יـ;

    iget-wide v0, p1, Lˊʼ/יـ;->ʾˋ:J

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lˊᐧ/ـˆ;->ᵎﹶ()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, v4

    :goto_0
    iput-wide v0, p1, Lˊʼ/יـ;->ʾˋ:J

    iget-object p1, p0, Lⁱٴ/ʼˎ;->ˊʻ:Lˊʼ/יـ;

    iget-wide v0, p1, Lˊʼ/יـ;->ʾˋ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lˊᐧ/ـˆ;->ᵎﹶ()J

    move-result-wide v4

    :cond_5
    iput-wide v4, p1, Lˊʼ/יـ;->ʾˋ:J

    :goto_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
