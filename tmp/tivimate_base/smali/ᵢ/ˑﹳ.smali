.class public final Lᵢ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵢ/ⁱˊ;


# static fields
.field public static final ˑﹳ:Lﾞʼ/ﹳٴ;

.field public static final ﾞᴵ:Lˆⁱ/ᵎﹶ;


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ⁱˊ:Ljava/util/Random;

.field public ﹳٴ:Lﾞˎ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lᵢ/ˑﹳ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lᵢ/ˑﹳ;->ˑﹳ:Lﾞʼ/ﹳٴ;

    new-instance v0, Lˆⁱ/ᵎﹶ;

    const-string v1, "1.3.6.1.4.1.311.2.2.10"

    invoke-direct {v0, v1}, Lˆⁱ/ᵎﹶ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lᵢ/ˑﹳ;->ﾞᴵ:Lˆⁱ/ᵎﹶ;

    return-void
.end method

.method public static ˈ(Lʻʽ/ˈ;)[B
    .locals 9

    .prologue
    new-instance v0, Lﹳʿ/ⁱˊ;

    invoke-direct {v0}, Lﹳʿ/ⁱˊ;-><init>()V

    iget-object v1, v0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lᵢ/ˑﹳ;->ﾞᴵ:Lˆⁱ/ᵎﹶ;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lˎʿ/ﹳٴ;

    invoke-direct {v1}, Lˎʿ/ⁱˊ;-><init>()V

    const-string v2, "NTLMSSP\u0000"

    sget-object v3, Lᴵʿ/ⁱˊ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v3}, Lˎʿ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-wide v2, p0, Lʻʽ/ˈ;->ʽʽ:J

    invoke-virtual {v1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {v1, p0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v1, p0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {v1, p0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {v1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v1}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object v1

    iput-object v1, v0, Lﹳʿ/ⁱˊ;->ˈ:[B

    new-instance v1, Lˎʿ/ﹳٴ;

    invoke-direct {v1}, Lˎʿ/ⁱˊ;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    sget-object v6, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    sget-object v7, Lˎᵔ/ᵎﹶ;->ˈٴ:Lˎᵔ/ᵎﹶ;

    if-lez v4, :cond_0

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lˈˑ/ʽ;

    invoke-static {v7, p0}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object p0

    invoke-virtual {p0, v6}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object p0

    new-instance v8, Lˈˑ/ﹳٴ;

    invoke-direct {v8, v4}, Lˈˑ/ﹳٴ;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v3, p0, v8, v5}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, v0, Lﹳʿ/ⁱˊ;->ˈ:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    if-lez p0, :cond_1

    new-instance p0, Lˈˑ/ʽ;

    const/4 v3, 0x2

    invoke-static {v7, v3}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object v3

    invoke-virtual {v3, v6}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v3

    new-instance v4, Lˑᐧ/ⁱˊ;

    iget-object v6, v0, Lﹳʿ/ⁱˊ;->ˈ:[B

    invoke-direct {v4, v6}, Lˑᐧ/ⁱˊ;-><init>([B)V

    invoke-direct {p0, v3, v4, v5}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Lˈˑ/ﹳٴ;

    invoke-direct {p0, v2}, Lˈˑ/ﹳٴ;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, p0}, Lᵎᵎ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;Lˎᵔ/ⁱˊ;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    const-string v1, "Unable to write NegTokenInit"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ˑﹳ(Lʻʽ/ⁱˊ;)[B
    .locals 8

    .prologue
    new-instance v0, Lˎʿ/ﹳٴ;

    invoke-direct {v0}, Lˎʿ/ⁱˊ;-><init>()V

    invoke-virtual {p0, v0}, Lʻʽ/ⁱˊ;->ᵢˏ(Lˎʿ/ﹳٴ;)V

    iget-boolean v1, p0, Lʻʽ/ⁱˊ;->ٴʼ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʻʽ/ⁱˊ;->ᵎˊ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    :cond_0
    iget-object v1, p0, Lʻʽ/ⁱˊ;->ʽʽ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v1, p0, Lʻʽ/ⁱˊ;->ˈٴ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v1, p0, Lʻʽ/ⁱˊ;->ˊʻ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v1, p0, Lʻʽ/ⁱˊ;->ᴵᵔ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v1, p0, Lʻʽ/ⁱˊ;->ٴᵢ:[B

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object p0, p0, Lʻʽ/ⁱˊ;->ˉٴ:[B

    array-length v1, p0

    invoke-virtual {v0, v1, p0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object p0

    new-instance v0, Lˎʿ/ﹳٴ;

    invoke-direct {v0}, Lˎʿ/ⁱˊ;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    array-length v2, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lˎᵔ/ᵎﹶ;->ˈٴ:Lˎᵔ/ᵎﹶ;

    sget-object v4, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    const/4 v5, 0x1

    if-lez v2, :cond_1

    :try_start_1
    new-instance v2, Lˈˑ/ʽ;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object v6

    invoke-virtual {v6, v4}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v6

    new-instance v7, Lˑᐧ/ⁱˊ;

    invoke-direct {v7, p0}, Lˑᐧ/ⁱˊ;-><init>([B)V

    invoke-direct {v2, v6, v7, v5}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Lˈˑ/ﹳٴ;

    invoke-direct {p0, v1}, Lˈˑ/ﹳٴ;-><init>(Ljava/util/ArrayList;)V

    new-instance v1, Lˈˑ/ʽ;

    invoke-static {v3, v5}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v2

    invoke-direct {v1, v2, p0, v5}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lﾞʽ/ⁱˊ;

    new-instance v3, Lᵔﹶ/ˊʻ;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lᵔﹶ/ˊʻ;-><init>(I)V

    invoke-direct {v2, v3, p0}, Lﾞʽ/ⁱˊ;-><init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2, v1}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v2, v1}, Lﹳʿ/ⁱˊ;->ﾞᴵ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v1, p0

    invoke-virtual {v0, v1, p0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, p0}, Lﹳʿ/ⁱˊ;->ﾞᴵ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    const-string v1, "Could not write NegTokenTarg to buffer"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final ʽ(Lˎﹳ/ⁱˊ;)V
    .locals 1

    iget-object v0, p1, Lˎﹳ/ⁱˊ;->ᵎﹶ:Lﾞˎ/ʽ;

    iput-object v0, p0, Lᵢ/ˑﹳ;->ﹳٴ:Lﾞˎ/ʽ;

    iget-object p1, p1, Lˎﹳ/ⁱˊ;->ˈ:Ljava/util/Random;

    iput-object p1, p0, Lᵢ/ˑﹳ;->ⁱˊ:Ljava/util/Random;

    return-void
.end method

.method public final ⁱˊ(Lᵢ/ﹳٴ;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lᵢ/ﹳٴ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Lᵢ/ﹳٴ;[B)Lʼﹳ/ᵔᵢ;
    .locals 25

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    new-instance v2, Lʼﹳ/ᵔᵢ;

    invoke-direct {v2}, Lʼﹳ/ᵔᵢ;-><init>()V

    iget-boolean v3, v1, Lᵢ/ˑﹳ;->ˈ:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v3, v1, Lᵢ/ˑﹳ;->ʽ:Z
    :try_end_0
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lᵢ/ˑﹳ;->ˑﹳ:Lﾞʼ/ﹳٴ;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    :try_start_1
    const-string v3, "Initialized Authentication of {} using NTLM"

    iget-object v0, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lʻʽ/ˈ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-wide v3, Lʻʽ/ˈ;->ˈٴ:J

    iput-wide v3, v0, Lʻʽ/ˈ;->ʽʽ:J

    iput-boolean v5, v1, Lᵢ/ˑﹳ;->ʽ:Z

    invoke-static {v0}, Lᵢ/ˑﹳ;->ˈ(Lʻʽ/ˈ;)[B

    move-result-object v0

    iput-object v0, v2, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    return-object v2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const-string v3, "Received token: {}"

    invoke-static/range {p2 .. p2}, Lᴵʿ/ﹳٴ;->ʽ([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lﹶˊ/ﹳٴ;

    iget-object v6, v1, Lᵢ/ˑﹳ;->ⁱˊ:Ljava/util/Random;

    iget-object v7, v1, Lᵢ/ˑﹳ;->ﹳٴ:Lﾞˎ/ʽ;

    invoke-direct {v3, v6, v7}, Lﹶˊ/ﹳٴ;-><init>(Ljava/util/Random;Lﾞˎ/ʽ;)V

    new-instance v6, Lﹳʿ/ⁱˊ;

    const-string v8, "NegTokenTarg"

    invoke-direct {v6, v5, v8}, Lﹳʿ/ⁱˊ;-><init>(ILjava/lang/String;)V

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Lﹳʿ/ⁱˊ;->ᵎﹶ([B)V

    new-instance v8, Lʻʽ/ʽ;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lʻʽ/ʽ;->ٴʼ:Ljava/util/HashMap;
    :try_end_1
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v10, Lˎʿ/ﹳٴ;

    iget-object v11, v6, Lﹳʿ/ⁱˊ;->ˈ:[B

    sget-object v12, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-direct {v10, v11, v5, v12}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    invoke-virtual {v8, v10}, Lʻʽ/ʽ;->ᵢˏ(Lˎʿ/ﹳٴ;)V
    :try_end_2
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v10, "Received NTLM challenge from: {}"

    iget-object v11, v8, Lʻʽ/ʽ;->ᵎⁱ:Ljava/lang/String;

    invoke-interface {v4, v11, v10}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lʻʽ/ﹳٴ;->ᴵˊ:Lʻʽ/ﹳٴ;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    iget-object v4, v8, Lʻʽ/ʽ;->ˊʻ:[B

    iget-object v10, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v10, [C

    iget-object v11, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    move-object v15, v11

    check-cast v15, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    if-nez v10, :cond_3

    new-array v10, v12, [B

    goto :goto_1

    :cond_3
    sget-object v13, Lﹶˊ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10
    :try_end_3
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    invoke-interface {v7}, Lﾞˎ/ʽ;->ٴﹶ()Lﾞˎ/ⁱˊ;

    move-result-object v13

    invoke-interface {v13, v10}, Lﾞˎ/ⁱˊ;->update([B)V

    invoke-interface {v13}, Lﾞˎ/ⁱˊ;->ˈ()[B

    move-result-object v10
    :try_end_4
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    new-array v13, v12, [B

    goto :goto_2

    :cond_4
    sget-object v14, Lﹶˊ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    :goto_2
    if-nez v11, :cond_5

    new-array v11, v12, [B

    goto :goto_3

    :cond_5
    sget-object v14, Lﹶˊ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    :goto_3
    const/4 v14, 0x2

    move/from16 v21, v5

    new-array v5, v14, [[B

    aput-object v13, v5, v12

    aput-object v11, v5, v21

    invoke-virtual {v3, v10, v5}, Lﹶˊ/ﹳٴ;->ⁱˊ([B[[B)[B

    move-result-object v5

    iget-object v10, v8, Lʻʽ/ʽ;->ᵎˊ:[B

    invoke-virtual {v3, v10}, Lﹶˊ/ﹳٴ;->ﹳٴ([B)[B

    move-result-object v10

    new-array v11, v14, [[B

    aput-object v4, v11, v12

    aput-object v10, v11, v21

    invoke-virtual {v3, v5, v11}, Lﹶˊ/ﹳٴ;->ⁱˊ([B[[B)[B

    move-result-object v4

    array-length v11, v4

    array-length v13, v10

    add-int/2addr v11, v13

    new-array v14, v11, [B

    array-length v11, v4

    invoke-static {v4, v12, v14, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v11, v10

    invoke-static {v10, v12, v14, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x10

    invoke-static {v14, v12, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    move/from16 v11, v21

    new-array v13, v11, [[B

    aput-object v10, v13, v12

    invoke-virtual {v3, v5, v13}, Lﹶˊ/ﹳٴ;->ⁱˊ([B[[B)[B

    move-result-object v5

    iget-object v10, v8, Lʻʽ/ʽ;->ᴵᵔ:Ljava/util/EnumSet;

    sget-object v11, Lʻʽ/ˑﹳ;->ʽʽ:Lʻʽ/ˑﹳ;

    invoke-virtual {v10, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lʻʽ/ˑﹳ;->ᵎˊ:Lʻʽ/ˑﹳ;

    invoke-virtual {v10, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Lʻʽ/ˑﹳ;->ٴʼ:Lʻʽ/ˑﹳ;

    invoke-virtual {v10, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Lʻʽ/ˑﹳ;->ˉٴ:Lʻʽ/ˑﹳ;

    invoke-virtual {v10, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    new-array v11, v4, [B

    iget-object v13, v1, Lᵢ/ˑﹳ;->ⁱˊ:Ljava/util/Random;

    invoke-virtual {v13, v11}, Ljava/util/Random;->nextBytes([B)V
    :try_end_5
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-interface {v7}, Lﾞˎ/ʽ;->יـ()Lᵢᵢ/ﹳٴ;

    move-result-object v7

    invoke-virtual {v7, v5}, Lᵢᵢ/ﹳٴ;->ⁱˊ([B)V
    :try_end_6
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    new-array v13, v4, [B
    :try_end_7
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-virtual {v7, v4, v11, v13}, Lᵢᵢ/ﹳٴ;->ʽ(I[B[B)I

    move-result v4

    invoke-virtual {v7, v4, v13}, Lᵢᵢ/ﹳٴ;->ﹳٴ(I[B)I
    :try_end_8
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iput-object v11, v2, Lʼﹳ/ᵔᵢ;->ʽ:[B

    move-object/from16 v17, v13

    :goto_4
    const/4 v11, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Lcom/hierynomus/ntlm/NtlmException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lcom/hierynomus/ntlm/NtlmException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    iput-object v5, v2, Lʼﹳ/ᵔᵢ;->ʽ:[B

    move-object/from16 v17, v5

    goto :goto_4

    :goto_5
    iput-boolean v11, v1, Lᵢ/ˑﹳ;->ˈ:Z

    sget-object v4, Lʻʽ/ﹳٴ;->ʽʽ:Lʻʽ/ﹳٴ;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_8

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v22, 0x2

    and-long v18, v18, v22

    const-wide/16 v22, 0x0

    cmp-long v4, v18, v22

    if-lez v4, :cond_8

    new-instance v4, Lʻʽ/ⁱˊ;

    new-array v13, v12, [B

    iget-object v0, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    invoke-static {v10}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v18

    const/16 v20, 0x1

    move/from16 v24, v12

    move-object v12, v4

    move/from16 v4, v24

    invoke-direct/range {v12 .. v20}, Lʻʽ/ⁱˊ;-><init>([B[BLjava/lang/String;Ljava/lang/String;[BJZ)V

    new-instance v0, Lˎʿ/ﹳٴ;

    invoke-direct {v0}, Lˎʿ/ⁱˊ;-><init>()V

    iget-object v6, v6, Lﹳʿ/ⁱˊ;->ˈ:[B

    array-length v7, v6

    invoke-virtual {v0, v7, v6}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v6, v8, Lʻʽ/ʽ;->ˊʻ:[B

    array-length v7, v6

    invoke-virtual {v0, v7, v6}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {v12, v0}, Lʻʽ/ⁱˊ;->ᵢˏ(Lˎʿ/ﹳٴ;)V

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object v0

    const/4 v11, 0x1

    new-array v6, v11, [[B

    aput-object v0, v6, v4

    invoke-virtual {v3, v5, v6}, Lﹶˊ/ﹳٴ;->ⁱˊ([B[[B)[B

    move-result-object v0

    iput-object v0, v12, Lʻʽ/ⁱˊ;->ᵎˊ:[B

    invoke-static {v12}, Lᵢ/ˑﹳ;->ˑﹳ(Lʻʽ/ⁱˊ;)[B

    move-result-object v0

    iput-object v0, v2, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    return-object v2

    :cond_8
    move v4, v12

    new-instance v12, Lʻʽ/ⁱˊ;

    new-array v13, v4, [B

    iget-object v0, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    invoke-static {v10}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v18

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lʻʽ/ⁱˊ;-><init>([B[BLjava/lang/String;Ljava/lang/String;[BJZ)V

    invoke-static {v12}, Lᵢ/ˑﹳ;->ˑﹳ(Lʻʽ/ⁱˊ;)[B

    move-result-object v0

    iput-object v0, v2, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    return-object v2

    :catch_3
    move-exception v0

    new-instance v2, Lcom/hierynomus/ntlm/NtlmException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_6
    new-instance v2, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
