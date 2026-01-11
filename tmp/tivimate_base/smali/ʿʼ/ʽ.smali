.class public abstract Lʿʼ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final ʽʽ:Lʼﹳ/ᵔᵢ;

.field public final ʾˋ:Lﾞʼ/ﹳٴ;

.field public final ˈٴ:Ljava/lang/String;

.field public final ᴵˊ:Lʿʼ/ˈ;


# direct methods
.method public constructor <init>(Lʼﹳ/ᵔᵢ;Lʿʼ/ˈ;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    iput-object v0, p0, Lʿʼ/ʽ;->ʾˋ:Lﾞʼ/ﹳٴ;

    iput-object p2, p0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    iput-object p1, p0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    iput-object p3, p0, Lʿʼ/ʽ;->ˈٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 10

    new-instance v0, Lˊʾ/ʽ;

    iget-object v9, p0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    iget-object v2, v9, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v4, v9, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v6, v9, Lʿʼ/ﾞʻ;->ʽʽ:J

    sget-object v3, Lʼﹳ/ﾞʻ;->ˉٴ:Lʼﹳ/ﾞʻ;

    const/4 v8, 0x0

    const/16 v1, 0x18

    invoke-direct/range {v0 .. v8}, Lˊʾ/ʽ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    iget-object v3, p0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    iput-object v3, v0, Lˊʾ/ʽ;->ٴᵢ:Ljava/lang/Object;

    sget-object v4, Lʿʼ/ﾞʻ;->ˈʿ:Lᵎˉ/ⁱˊ;

    iget-wide v5, v9, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v2, "Close"

    move-object v1, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    return-void
.end method

.method public final ـˆ()Lﹳˋ/ᴵˊ;
    .locals 10

    .prologue
    iget-object v1, p0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lﹳˋ/ˈٴ;

    invoke-static {v0}, Lﹳˋ/ʻٴ;->ﹳٴ(Ljava/lang/Class;)Lﹳˋ/ˉˆ;

    move-result-object v0

    invoke-interface {v0}, Lﹳˋ/ˉˆ;->ﹳٴ()I

    move-result v9

    new-instance v2, Lˊʾ/ᵔʾ;

    iget-object v3, v1, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v4, v1, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v6, v1, Lʿʼ/ﾞʻ;->ʽʽ:J

    iget-object v8, p0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    invoke-direct/range {v2 .. v9}, Lˊʾ/ᵔʾ;-><init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;I)V

    move-object v4, v8

    sget-object v5, Lʿʼ/ˉʿ;->ˉʿ:Lﹳˋ/ʼˎ;

    iget-wide v6, v1, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v3, "QueryInfo"

    invoke-virtual/range {v1 .. v7}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    move-result-object v1

    check-cast v1, Lˊʾ/ˉˆ;

    iget-object v1, v1, Lˊʾ/ˉˆ;->ˊʻ:[B

    :try_start_0
    new-instance v2, Lˎʿ/ﹳٴ;

    sget-object v3, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    invoke-interface {v0, v2}, Lﹳˋ/ˉˆ;->ʽ(Lˎʿ/ⁱˊ;)Lﹳˋ/ᵔﹳ;

    move-result-object v0

    check-cast v0, Lﹳˋ/ᴵˊ;
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ᵎﹶ()V
    .locals 14

    .prologue
    iget-object v0, p0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳˋ/ʼˎ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lﹳˋ/ʼˎ;-><init>(I)V

    new-instance v2, Lˋʼ/ﹳٴ;

    invoke-direct {v2}, Lˎʿ/ⁱˊ;-><init>()V

    sget-object v3, Lﹳˋ/ʻٴ;->ﹳٴ:Ljava/util/HashMap;

    const-class v4, Lﹳˋ/ʼˎ;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹳˋ/ʼᐧ;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1, v2}, Lﹳˋ/ʼᐧ;->ⁱˊ(Lﹳˋ/ʼˎ;Lˋʼ/ﹳٴ;)V

    invoke-interface {v3}, Lﹳˋ/ʼᐧ;->ﹳٴ()I

    move-result v12

    invoke-virtual {v2}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object v13

    new-instance v1, Lˊʾ/ʽﹳ;

    iget-object v6, v0, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v7, v0, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v9, v0, Lʿʼ/ﾞʻ;->ʽʽ:J

    iget-object v3, p0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    move-object v5, v1

    move-object v11, v3

    invoke-direct/range {v5 .. v13}, Lˊʾ/ʽﹳ;-><init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;I[B)V

    sget-object v4, Lʿʼ/ˉʿ;->ˉʿ:Lﹳˋ/ʼˎ;

    iget-wide v5, v0, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v2, "SetInfo"

    invoke-virtual/range {v0 .. v6}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileInformationClass not supported - "

    invoke-static {v4, v1}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
