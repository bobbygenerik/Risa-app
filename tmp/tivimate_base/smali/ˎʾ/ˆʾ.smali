.class public final Lˎʾ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:I

.field public ⁱˊ:Lˊﾞ/ٴᵢ;

.field public final ﹳٴ:Lˈـ/ﾞʻ;


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ˆʾ;->ﹳٴ:Lˈـ/ﾞʻ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʾ/ˆʾ;->ʽ:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lˎʾ/ˆʾ;->ˈ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ˆʾ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ˆʾ;->ʽ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ˆʾ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ˆʾ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ˆʾ;->ʽ:J

    iput-wide p3, p0, Lˎʾ/ˆʾ;->ˈ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget-object v2, v0, Lˎʾ/ˆʾ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lˎʾ/ˆʾ;->ˑﹳ:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "; received: "

    const-string v4, "."

    const-string v5, "Received RTP packet with unexpected sequence number. Expected: "

    invoke-static {v5, v2, v3, v1, v4}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtpPcmReader"

    nop

    :cond_0
    iget-wide v5, v0, Lˎʾ/ˆʾ;->ˈ:J

    iget-wide v9, v0, Lˎʾ/ˆʾ;->ʽ:J

    iget-object v2, v0, Lˎʾ/ˆʾ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget v4, v2, Lˈـ/ﾞʻ;->ⁱˊ:I

    move-wide/from16 v7, p2

    invoke-static/range {v4 .. v10}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v15

    iget-object v2, v0, Lˎʾ/ˆʾ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    move-object/from16 v3, p1

    invoke-interface {v2, v15, v3}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v11, v0, Lˎʾ/ˆʾ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v1, v0, Lˎʾ/ˆʾ;->ˑﹳ:I

    return-void
.end method
