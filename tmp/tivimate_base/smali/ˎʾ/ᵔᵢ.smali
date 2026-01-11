.class public final Lˎʾ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:I

.field public ᵎﹶ:Z

.field public ⁱˊ:Lˊﾞ/ٴᵢ;

.field public final ﹳٴ:Lˈـ/ﾞʻ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ᵔᵢ;->ﹳٴ:Lˈـ/ﾞʻ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lˎʾ/ᵔᵢ;->ʽ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ᵔᵢ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ᵔᵢ;->ʽ:J

    return-void
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ᵔᵢ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    iput-wide p1, p0, Lˎʾ/ᵔᵢ;->ʽ:J

    iput-wide p3, p0, Lˎʾ/ᵔᵢ;->ˈ:J

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lˎʾ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-boolean v3, v0, Lˎʾ/ᵔᵢ;->ﾞᴵ:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget v3, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v7, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/16 v8, 0x12

    if-le v7, v8, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    const-string v8, "ID Header has insufficient data"

    invoke-static {v8, v7}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5, v7}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "OpusHead"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "ID Header missing"

    invoke-static {v7, v5}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v4, v6

    :cond_1
    const-string v5, "version number must always be 1"

    invoke-static {v5, v4}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v1, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v1}, Lˊﾞ/ﹳٴ;->ʽ([B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, v0, Lˎʾ/ᵔᵢ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object v3, v3, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v3}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v3

    iput-object v1, v3, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iget-object v1, v0, Lˎʾ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-static {v3, v1}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput-boolean v6, v0, Lˎʾ/ᵔᵢ;->ﾞᴵ:Z

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lˎʾ/ᵔᵢ;->ᵎﹶ:Z

    if-nez v3, :cond_4

    iget v3, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    if-lt v3, v5, :cond_3

    move v4, v6

    :cond_3
    const-string v3, "Comment Header has insufficient data"

    invoke-static {v3, v4}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5, v3}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpusTags"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Comment Header should follow ID Header"

    invoke-static {v3, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    iput-boolean v6, v0, Lˎʾ/ᵔᵢ;->ᵎﹶ:Z

    goto :goto_1

    :cond_4
    iget v3, v0, Lˎʾ/ᵔᵢ;->ˑﹳ:I

    invoke-static {v3}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v3

    if-eq v2, v3, :cond_5

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "; received: "

    const-string v5, "."

    const-string v6, "Received RTP packet with unexpected sequence number. Expected: "

    invoke-static {v6, v3, v4, v2, v5}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RtpOpusReader"

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v9

    iget-object v3, v0, Lˎʾ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-interface {v3, v9, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-wide v11, v0, Lˎʾ/ᵔᵢ;->ˈ:J

    iget-wide v3, v0, Lˎʾ/ᵔᵢ;->ʽ:J

    const v10, 0xbb80

    move-wide/from16 v13, p2

    move-wide v15, v3

    invoke-static/range {v10 .. v16}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v6

    iget-object v5, v0, Lˎʾ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :goto_1
    iput v2, v0, Lˎʾ/ᵔᵢ;->ˑﹳ:I

    return-void
.end method
