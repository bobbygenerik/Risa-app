.class public final Lיˆ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final ᵔי:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:J

.field public final ˈٴ:Lٴٴ/ⁱˊ;

.field public final ˉٴ:Ljava/util/ArrayList;

.field public final ˊʻ:Lˉˆ/ʿ;

.field public ٴʼ:Z

.field public final ٴᵢ:Lˑי/ʽ;

.field public final ᴵˊ:Lיˆ/ⁱˊ;

.field public final ᴵᵔ:Lᵎˑ/ⁱˊ;

.field public ᵎˊ:Z

.field public final ᵎⁱ:Lᵢ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lיˆ/ʽ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lיˆ/ʽ;->ᵔי:Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lٴٴ/ⁱˊ;Lᵢ/ﹳٴ;Lᵎˑ/ⁱˊ;Lˉˆ/ʿ;Lﾞˎ/ʽ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˑי/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, p0, Lיˆ/ʽ;->ٴᵢ:Lˑי/ʽ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lיˆ/ʽ;->ˉٴ:Ljava/util/ArrayList;

    iput-object p1, p0, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iput-object p2, p0, Lיˆ/ʽ;->ᵎⁱ:Lᵢ/ﹳٴ;

    iput-object p3, p0, Lיˆ/ʽ;->ᴵᵔ:Lᵎˑ/ⁱˊ;

    iput-object p4, p0, Lיˆ/ʽ;->ˊʻ:Lˉˆ/ʿ;

    new-instance p2, Lיˆ/ⁱˊ;

    iget-object p1, p1, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object p1, p1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Lʽᴵ/יـ;

    iget-object p1, p1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Lʼﹳ/ʽ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Lיˆ/ⁱˊ;->ﹳٴ:Lʼﹳ/ʽ;

    iput-object p5, p2, Lיˆ/ⁱˊ;->ⁱˊ:Lﾞˎ/ʽ;

    iput-object p2, p0, Lיˆ/ʽ;->ᴵˊ:Lיˆ/ⁱˊ;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lᵎˑ/ⁱˊ;->ﹳٴ(Ljava/lang/AutoCloseable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lיˆ/ʽ;->ﹳᐧ()V

    return-void
.end method

.method public final ʽ(Lˎᴵ/ﹳٴ;)Lיˆ/ʽ;
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iget-object v0, v0, Lٴٴ/ⁱˊ;->ᵎⁱ:Lˎﹳ/ﹳٴ;

    iget-object v1, p1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lˎﹳ/ﹳٴ;->ʽ(Ljava/lang/String;)Lٴٴ/ⁱˊ;

    move-result-object v0

    iget-object v1, p0, Lיˆ/ʽ;->ᵎⁱ:Lᵢ/ﹳٴ;

    invoke-virtual {v0, v1}, Lٴٴ/ⁱˊ;->ﹶˎ(Lᵢ/ﹳٴ;)Lיˆ/ʽ;

    move-result-object v0

    iget-object v1, p0, Lיˆ/ʽ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hierynomus/mssmb2/SMBApiException;

    sget-object v2, Lʼﹳ/ﾞʻ;->ᴵˊ:Lʼﹳ/ﾞʻ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to DFS root "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0xffffffffL

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final ˉˆ(Lˊʾ/ˏי;)V
    .locals 4

    .prologue
    iget-object v0, p1, Lˊʾ/ˏי;->ٴʼ:Ljava/util/EnumSet;

    sget-object v1, Lˊʾ/יـ;->ᴵˊ:Lˊʾ/יـ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lיˆ/ʽ;->ٴʼ:Z

    iget-object v0, p1, Lˊʾ/ˏי;->ٴʼ:Ljava/util/EnumSet;

    sget-object v1, Lˊʾ/יـ;->ʽʽ:Lˊʾ/יـ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lיˆ/ʽ;->ᵎˊ:Z

    iget-object v1, p0, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iget-object v2, v1, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget v2, v1, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lיˆ/ʽ;->ʽʽ:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lיˆ/ʽ;->ʽʽ:Z

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lיˆ/ʽ;->ʽʽ:Z

    :cond_1
    iget-boolean v0, p0, Lיˆ/ʽ;->ٴʼ:Z

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lיˆ/ʽ;->ʽʽ:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/hierynomus/smbj/session/SMB2GuestSigningRequiredException;

    invoke-direct {p1}, Lcom/hierynomus/smbj/session/SMB2GuestSigningRequiredException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lיˆ/ʽ;->ʽʽ:Z

    :cond_4
    iget-object v0, v1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʽᴵ/יـ;

    iget-object v0, v0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ʽ;

    invoke-virtual {v0}, Lʼﹳ/ʽ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lˊʾ/ˏי;->ٴʼ:Ljava/util/EnumSet;

    sget-object v0, Lˊʾ/יـ;->ˈٴ:Lˊʾ/יـ;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lיˆ/ʽ;->ʽʽ:Z

    :cond_5
    iget-boolean p1, p0, Lיˆ/ʽ;->ٴʼ:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lיˆ/ʽ;->ᵎˊ:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lיˆ/ʽ;->ᴵˊ:Lיˆ/ⁱˊ;

    iget-object v0, p1, Lיˆ/ⁱˊ;->ﹳٴ:Lʼﹳ/ʽ;

    invoke-virtual {v0}, Lʼﹳ/ʽ;->ﹳٴ()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "HmacSHA256"

    iput-object v0, p1, Lיˆ/ⁱˊ;->ʽ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p1, Lיˆ/ⁱˊ;->ˈ:[B

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set a signing key (yet) for SMB3.x"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lיˆ/ʽ;->ʽʽ:Z

    iget-object v1, p0, Lיˆ/ʽ;->ᴵˊ:Lיˆ/ⁱˊ;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lיˆ/ⁱˊ;->ˈ:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/transport/TransportException;

    const-string v0, "Message signing is required, but no signing key is negotiated"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, v1, Lיˆ/ⁱˊ;->ˈ:[B

    if-eqz v0, :cond_2

    new-instance v0, Lˊʾ/ʼˎ;

    invoke-direct {v0, v1, p1}, Lˊʾ/ʼˎ;-><init>(Lיˆ/ⁱˊ;Lʼﹳ/ˉˆ;)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lיˆ/ⁱˊ;->ˑﹳ:Lﾞʼ/ﹳٴ;

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v1

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-object v1, v1, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    const-string v2, "Not wrapping {} as signed, as no key is set."

    invoke-interface {v0, v1, v2}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    invoke-virtual {v0, p1}, Lٴٴ/ⁱˊ;->ﾞˋ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ(Ljava/lang/String;)Lʿʼ/ﾞʻ;
    .locals 20

    .prologue
    move-object/from16 v4, p0

    move-object/from16 v0, p1

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v7, v4, Lיˆ/ʽ;->ٴᵢ:Lˑי/ʽ;

    iget-object v1, v7, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v2, v7, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʿʼ/ﾞʻ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    sget-object v1, Lיˆ/ʽ;->ᵔי:Lﾞʼ/ﹳٴ;

    if-eqz v2, :cond_0

    const-string v3, "Returning cached Share {} for {}"

    invoke-interface {v1, v2, v0, v3}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v8, v4, Lיˆ/ʽ;->ˊʻ:Lˉˆ/ʿ;

    const-string v2, "Could not connect to "

    iget-object v3, v4, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iget-object v5, v3, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    new-instance v6, Lˎᴵ/ﹳٴ;

    const/4 v9, 0x0

    invoke-direct {v6, v5, v0, v9}, Lˎᴵ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v9, v4, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "Connecting to {} on session {}"

    invoke-interface {v1, v6, v9, v10}, Lﾞʼ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    new-instance v11, Lˊʾ/ʽ;

    iget-object v9, v3, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v9, v9, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v9, Lʽᴵ/יـ;

    iget-object v9, v9, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    move-object v13, v9

    check-cast v13, Lʼﹳ/ʽ;

    iget-wide v9, v4, Lיˆ/ʽ;->ʾˋ:J

    sget-object v14, Lʼﹳ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ﾞʻ;

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v12, 0x9

    move-wide v15, v9

    invoke-direct/range {v11 .. v19}, Lˊʾ/ʽ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    iput-object v6, v11, Lˊʾ/ʽ;->ٴᵢ:Ljava/lang/Object;

    iget-object v9, v11, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lˋʼ/ⁱˊ;

    check-cast v9, Lʼﹳ/ٴﹶ;

    const/16 v10, 0x100

    iput v10, v9, Lʼﹳ/ٴﹶ;->ʽ:I

    invoke-virtual {v4, v11}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object v9

    iget-object v3, v3, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-wide v10, v3, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {v9, v10, v11}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lˊʾ/ʻٴ;
    :try_end_1
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v8, v4, v9, v6}, Lˉˆ/ʿ;->ˈʿ(Lיˆ/ʽ;Lʼﹳ/ˉˆ;Lˎᴵ/ﹳٴ;)Lˎᴵ/ﹳٴ;

    move-result-object v11

    iget-object v12, v11, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v12, v5}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v13, v11, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v14, v11, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    if-nez v12, :cond_1

    :try_start_3
    const-string v12, "Re-routing the connection to host {}"

    invoke-interface {v1, v14, v12}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lיˆ/ʽ;->ʽ(Lˎᴵ/ﹳٴ;)Lיˆ/ʽ;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    move-object v11, v4

    :goto_0
    invoke-static {v14, v5}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v13, v0}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {v11, v13}, Lיˆ/ʽ;->ᵎﹶ(Ljava/lang/String;)Lʿʼ/ﾞʻ;

    move-result-object v0
    :try_end_3
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_1
    :cond_3
    :try_start_4
    iget-object v0, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    move-object v5, v0

    check-cast v5, Lʼﹳ/ٴﹶ;

    iget-wide v11, v5, Lʼﹳ/ٴﹶ;->ˆʾ:J

    const/16 v5, 0x1e

    ushr-long/2addr v11, v5

    const-wide/16 v13, 0x3

    cmp-long v5, v11, v13

    if-nez v5, :cond_4

    move v3, v10

    :cond_4
    if-nez v3, :cond_9

    iget-object v0, v9, Lˊʾ/ʻٴ;->ٴᵢ:Ljava/util/EnumSet;

    sget-object v1, Lʼﹳ/ﹳᐧ;->ᴵˊ:Lʼﹳ/ﹳᐧ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    iget-wide v1, v0, Lʼﹳ/ٴﹶ;->ʼˎ:J

    new-instance v0, Lʾⁱ/ˈ;

    iget-object v5, v4, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    move-object v3, v6

    iget-object v6, v4, Lיˆ/ʽ;->ᴵᵔ:Lᵎˑ/ⁱˊ;

    invoke-direct/range {v0 .. v6}, Lʾⁱ/ˈ;-><init>(JLˎᴵ/ﹳٴ;Lיˆ/ʽ;Lٴٴ/ⁱˊ;Lᵎˑ/ⁱˊ;)V

    iget-byte v1, v9, Lˊʾ/ʻٴ;->ˊʻ:B

    if-ne v1, v10, :cond_5

    new-instance v1, Lʿʼ/ˈ;

    invoke-direct {v1, v3, v0, v8}, Lʿʼ/ˈ;-><init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;Lˉˆ/ʿ;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    new-instance v1, Lʿʼ/ʼˎ;

    invoke-direct {v1, v3, v0}, Lʿʼ/ﾞʻ;-><init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    new-instance v1, Lʿʼ/ˆʾ;

    invoke-direct {v1, v3, v0}, Lʿʼ/ﾞʻ;-><init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;)V

    :goto_2
    invoke-virtual {v7, v1}, Lˑי/ʽ;->ᴵˊ(Lʿʼ/ﾞʻ;)V

    return-object v1

    :cond_7
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    const-string v1, "Unknown ShareType returned in the TREE_CONNECT Response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    const-string v1, "ASYMMETRIC capability unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v3, v6

    check-cast v0, Lʼﹳ/ٴﹶ;

    invoke-virtual {v0}, Lʼﹳ/ٴﹶ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lﾞʼ/ﹳٴ;->ﹳᐧ(Ljava/lang/String;)V

    new-instance v0, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-object v1, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance v1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Share name ("

    const-string v3, ") cannot contain \'\\\' characters."

    invoke-static {v2, v0, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ﹳᐧ()V
    .locals 12

    .prologue
    iget-object v1, p0, Lיˆ/ʽ;->ᴵᵔ:Lᵎˑ/ⁱˊ;

    iget-object v2, p0, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    sget-object v3, Lיˆ/ʽ;->ᵔי:Lﾞʼ/ﹳٴ;

    :try_start_0
    const-string v0, "Logging off session {} from host {}"

    iget-wide v4, p0, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v2, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lﾞʼ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lיˆ/ʽ;->ٴᵢ:Lˑי/ʽ;

    iget-object v4, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Lʿʼ/ﾞʻ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Lʿʼ/ﾞʻ;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v9, "Caught exception while closing TreeConnect with id: {}"

    iget-object v7, v7, Lʿʼ/ﾞʻ;->ᴵˊ:Lʾⁱ/ˈ;

    iget-wide v10, v7, Lʾⁱ/ˈ;->ᴵˊ:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7, v0, v9}, Lﾞʼ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lיˆ/ʽ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    check-cast v5, Lיˆ/ʽ;

    const-string v7, "Logging off nested session {} for session {}"

    iget-wide v8, v5, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v8, v9, v7}, Lﾞʼ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Lיˆ/ʽ;->ﹳᐧ()V
    :try_end_5
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_6
    const-string v7, "Caught exception while logging off nested session {}"

    iget-wide v8, v5, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Lﾞʼ/ﹳٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lˊʾ/ᵔᵢ;

    iget-object v0, v2, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v0, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʽᴵ/יـ;

    iget-object v0, v0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lʼﹳ/ʽ;

    iget-wide v7, p0, Lיˆ/ʽ;->ʾˋ:J

    sget-object v6, Lʼﹳ/ﾞʻ;->ˈٴ:Lʼﹳ/ﾞʻ;

    const-wide/16 v9, 0x0

    const/4 v4, 0x4

    invoke-direct/range {v3 .. v10}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    invoke-virtual {p0, v3}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object v0

    iget-object v2, v2, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-wide v2, v2, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {v0, v2, v3}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʾ/ᵔᵢ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lˋʼ/ⁱˊ;

    check-cast v2, Lʼﹳ/ٴﹶ;

    iget-wide v2, v2, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v2, v3}, Lٴˎ/ﹳٴ;->ﹳٴ(J)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    new-instance v0, Lᵎˑ/ʽ;

    iget-wide v2, p0, Lיˆ/ʽ;->ʾˋ:J

    invoke-direct {v0, v2, v3}, Lᵎˑ/ʽ;-><init>(J)V

    iget-object v1, v1, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    return-void

    :cond_2
    :try_start_7
    new-instance v2, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not logoff session <<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lיˆ/ʽ;->ʾˋ:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    new-instance v2, Lᵎˑ/ʽ;

    iget-wide v3, p0, Lיˆ/ʽ;->ʾˋ:J

    invoke-direct {v2, v3, v4}, Lᵎˑ/ʽ;-><init>(J)V

    iget-object v1, v1, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    throw v0
.end method
