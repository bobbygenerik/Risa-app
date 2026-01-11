.class public final Lʿʼ/ˈ;
.super Lʿʼ/ﾞʻ;
.source "SourceFile"


# static fields
.field public static final ˊˋ:Lˋⁱ/ﾞᴵ;

.field public static final ˋᵔ:Lﹳˋ/ʼˎ;


# instance fields
.field public final ˑٴ:Lˉˆ/ʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lʿʼ/ˈ;->ˋᵔ:Lﹳˋ/ʼˎ;

    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʿʼ/ˈ;->ˊˋ:Lˋⁱ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;Lˉˆ/ʿ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lʿʼ/ﾞʻ;-><init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;)V

    iput-object p3, p0, Lʿʼ/ˈ;->ˑٴ:Lˉˆ/ʿ;

    return-void
.end method

.method public static synthetic ˉˆ(Ljava/lang/Throwable;Lʿʼ/ʽ;)V
    .locals 0

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Lʼﾞ/ˊˋ;->ʾᵎ(Lʿʼ/ʽ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    instance-of p0, p1, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lʿʼ/ʽ;->close()V

    return-void

    :cond_1
    instance-of p0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lˉˏ/ﹳٴ;->ⁱˊ(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lʿʼ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʼ/ﾞʻ;->ʾˋ:Lˎᴵ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʾˋ(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .prologue
    const-string v0, "*"

    sget-object v1, Lﾞʾ/ﹳٴ;->ʽʽ:Lﾞʾ/ﹳٴ;

    sget-object v2, Lﾞʾ/ﹳٴ;->ˈٴ:Lﾞʾ/ﹳٴ;

    sget-object v3, Lﾞʾ/ﹳٴ;->ᴵˊ:Lﾞʾ/ﹳٴ;

    invoke-static {v3, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    sget-object v8, Lʼﹳ/ᵔﹳ;->ᴵᵔ:Ljava/util/Set;

    const-class v1, Lʼﹳ/ⁱˊ;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    sget-object v1, Lʼﹳ/ⁱˊ;->ᴵˊ:Lʼﹳ/ⁱˊ;

    invoke-virtual {v10, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lʼﹳ/ⁱˊ;->ʽʽ:Lʼﹳ/ⁱˊ;

    invoke-virtual {v10, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    const-class v1, Lﹶᵢ/ﹳٴ;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    sget-object v1, Lﹶᵢ/ﹳٴ;->ᴵˊ:Lﹶᵢ/ﹳٴ;

    invoke-virtual {v7, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lʿʼ/ˈ;->ˈٴ(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ʽ;

    move-result-object p1

    check-cast p1, Lʿʼ/ⁱˊ;

    iget-object v1, p1, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    iget-object v2, p1, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    iget-object v3, p1, Lʿʼ/ʽ;->ˈٴ:Ljava/lang/String;

    iget-object v4, p1, Lʿʼ/ʽ;->ʾˋ:Lﾞʼ/ﹳٴ;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lʿʼ/ﹳٴ;

    invoke-direct {v11, p1, v0}, Lʿʼ/ﹳٴ;-><init>(Lʿʼ/ⁱˊ;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v11}, Lʿʼ/ﹳٴ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lʿʼ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lʿʼ/ʽ;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    move-object p1, v0

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v3, v0, v8

    aput-object v2, v0, v7

    aput-object v1, v0, v6

    aput-object p1, v0, v5

    invoke-interface {v4, v0}, Lﾞʼ/ﹳٴ;->ʼʼ([Ljava/lang/Object;)V

    return-object v10

    :goto_1
    move-object v10, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lʿʼ/ʽ;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v3, v0, v8

    aput-object v2, v0, v7

    aput-object v1, v0, v6

    aput-object p1, v0, v5

    invoke-interface {v4, v0}, Lﾞʼ/ﹳٴ;->ʼʼ([Ljava/lang/Object;)V

    :goto_3
    throw v10
.end method

.method public final ˈʿ(Ljava/lang/String;)V
    .locals 8

    .prologue
    :try_start_0
    sget-object v0, Lﾞʾ/ﹳٴ;->ᴵᵔ:Lﾞʾ/ﹳٴ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v0, Lﹶᵢ/ﹳٴ;->ˈٴ:Lﹶᵢ/ﹳٴ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v0, Lʼﹳ/ᵔﹳ;->ˈٴ:Lʼﹳ/ᵔﹳ;

    sget-object v1, Lʼﹳ/ᵔﹳ;->ʽʽ:Lʼﹳ/ᵔﹳ;

    sget-object v2, Lʼﹳ/ᵔﹳ;->ᴵˊ:Lʼﹳ/ᵔﹳ;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    sget-object v0, Lʼﹳ/ⁱˊ;->ʽʽ:Lʼﹳ/ⁱˊ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lʿʼ/ˈ;->ˈٴ(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ʽ;

    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lʿʼ/ʽ;->ᵎﹶ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0, p1}, Lʿʼ/ˈ;->ˉˆ(Ljava/lang/Throwable;Lʿʼ/ʽ;)V
    :try_end_2
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lʿʼ/ˈ;->ˉˆ(Ljava/lang/Throwable;Lʿʼ/ʽ;)V

    throw v0
    :try_end_4
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v0, Lʿʼ/ˈ;->ˊˋ:Lˋⁱ/ﾞᴵ;

    iget-wide v1, p1, Lcom/hierynomus/mssmb2/SMBApiException;->ᴵˊ:J

    invoke-virtual {v0, v1, v2}, Lˋⁱ/ﾞᴵ;->ﾞᴵ(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p1
.end method

.method public final ˈٴ(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ʽ;
    .locals 7

    .prologue
    new-instance v1, Lˎᴵ/ﹳٴ;

    iget-object v0, p0, Lʿʼ/ﾞʻ;->ʾˋ:Lˎᴵ/ﹳٴ;

    invoke-direct {v1, v0, p1}, Lˎᴵ/ﹳٴ;-><init>(Lˎᴵ/ﹳٴ;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lʿʼ/ˈ;->ˑٴ:Lˉˆ/ʿ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lʿʼ/ﾞʻ;->ˈٴ:Lיˆ/ʽ;

    iget-object v0, v1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    :try_start_1
    invoke-static {v0, v0}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lיˆ/ʽ;->ʽ(Lˎᴵ/ﹳٴ;)Lיˆ/ʽ;

    move-result-object p1
    :try_end_1
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v2, v1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    :try_start_2
    invoke-static {v0, v0}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v2}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Lיˆ/ʽ;->ᵎﹶ(Ljava/lang/String;)Lʿʼ/ﾞʻ;

    move-result-object p1

    check-cast p1, Lʿʼ/ˈ;

    move-object v0, p1

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lʿʼ/ˈ;->ﹳᐧ(Lˎᴵ/ﹳٴ;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lᵢ/ﹳٴ;

    move-result-object p1
    :try_end_2
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p2, p1, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lˊʾ/ˑﹳ;

    iget-object p3, p1, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p3, Lˎᴵ/ﹳٴ;

    iget-object p1, p1, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʿʼ/ˈ;

    iget-object p4, p2, Lˊʾ/ˑﹳ;->ˊʻ:Ljava/util/EnumSet;

    sget-object p5, Lﹶᵢ/ﹳٴ;->ᴵˊ:Lﹶᵢ/ﹳٴ;

    invoke-interface {p4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lʿʼ/ⁱˊ;

    iget-object p2, p2, Lˊʾ/ˑﹳ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {p3}, Lˎᴵ/ﹳٴ;->ⁱˊ()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p1, p3}, Lʿʼ/ʽ;-><init>(Lʼﹳ/ᵔᵢ;Lʿʼ/ˈ;Ljava/lang/String;)V

    return-object p4

    :cond_2
    new-instance p4, Lʿʼ/ˑﹳ;

    iget-object p2, p2, Lˊʾ/ˑﹳ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {p3}, Lˎᴵ/ﹳٴ;->ⁱˊ()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p1, p3}, Lʿʼ/ˑﹳ;-><init>(Lʼﹳ/ᵔᵢ;Lʿʼ/ˈ;Ljava/lang/String;)V

    return-object p4

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-wide p3, p1, Lcom/hierynomus/smbj/paths/PathResolveException;->ʾˋ:J

    invoke-static {p3, p4}, Lٴˎ/ﹳٴ;->ⁱˊ(J)Lٴˎ/ﹳٴ;

    move-result-object p3

    iget-wide p3, p3, Lٴˎ/ﹳٴ;->ʾˋ:J

    sget-object p5, Lʼﹳ/ﾞʻ;->ᴵˊ:Lʼﹳ/ﾞʻ;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Cannot resolve path "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public final ـˆ(Ljava/lang/String;)Z
    .locals 8

    .prologue
    sget-object v0, Lʼﹳ/ⁱˊ;->ʽʽ:Lʼﹳ/ⁱˊ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    :try_start_0
    sget-object v0, Lﾞʾ/ﹳٴ;->ʽʽ:Lﾞʾ/ﹳٴ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v0, Lﹶᵢ/ﹳٴ;->ˈٴ:Lﹶᵢ/ﹳٴ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lʼﹳ/ᵔﹳ;->ᴵᵔ:Ljava/util/Set;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lʿʼ/ˈ;->ˈٴ(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ʽ;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1}, Lʿʼ/ˈ;->ˉˆ(Ljava/lang/Throwable;Lʿʼ/ʽ;)V
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-wide v0, p1, Lcom/hierynomus/mssmb2/SMBApiException;->ᴵˊ:J

    sget-object v2, Lʿʼ/ˈ;->ˋᵔ:Lﹳˋ/ʼˎ;

    invoke-virtual {v2, v0, v1}, Lﹳˋ/ʼˎ;->ﾞᴵ(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    throw p1
.end method

.method public final ᵎˊ(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ˑﹳ;
    .locals 7

    .prologue
    if-eqz p6, :cond_0

    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p6

    :goto_0
    move-object v6, p6

    goto :goto_1

    :cond_0
    const-class p6, Lʼﹳ/ⁱˊ;

    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p6

    goto :goto_0

    :goto_1
    sget-object p6, Lʼﹳ/ⁱˊ;->ʽʽ:Lʼﹳ/ⁱˊ;

    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p6, Lʼﹳ/ⁱˊ;->ᴵˊ:Lʼﹳ/ⁱˊ;

    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p3

    :goto_2
    move-object v3, p3

    goto :goto_3

    :cond_1
    const-class p3, Lﹶᵢ/ﹳٴ;

    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    goto :goto_2

    :goto_3
    sget-object p3, Lﹶᵢ/ﹳٴ;->ᴵˊ:Lﹶᵢ/ﹳٴ;

    invoke-virtual {v3, p3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lʿʼ/ˈ;->ˈٴ(Ljava/lang/String;Ljava/util/Set;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lʿʼ/ʽ;

    move-result-object p1

    check-cast p1, Lʿʼ/ˑﹳ;

    return-object p1
.end method

.method public final ﹳᐧ(Lˎᴵ/ﹳٴ;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lᵢ/ﹳٴ;
    .locals 14

    .prologue
    iget-object v13, p0, Lʿʼ/ﾞʻ;->ˈٴ:Lיˆ/ʽ;

    new-instance v0, Lˊʾ/ˈ;

    iget-wide v4, p0, Lʿʼ/ﾞʻ;->ʽʽ:J

    const/4 v6, 0x0

    iget-object v1, p0, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v2, p0, Lʿʼ/ﾞʻ;->ᵔי:J

    move-object v12, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lˊʾ/ˈ;-><init>(Lʼﹳ/ʽ;JJILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Lˎᴵ/ﹳٴ;)V

    iget-object v8, p0, Lʿʼ/ˈ;->ˑٴ:Lˉˆ/ʿ;

    iget-object v1, v8, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lـˎ/ˈ;

    iget-wide v6, p0, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v3, "Create"

    move-object v1, p0

    move-object v4, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lˊʾ/ˑﹳ;

    :try_start_0
    invoke-virtual {v8, v13, v9, p1}, Lˉˆ/ʿ;->ˈʿ(Lיˆ/ʽ;Lʼﹳ/ˉˆ;Lˎᴵ/ﹳٴ;)Lˎᴵ/ﹳٴ;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, v1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v2}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {v13, v1}, Lיˆ/ʽ;->ʽ(Lˎᴵ/ﹳٴ;)Lיˆ/ʽ;

    move-result-object v13

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, v1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v2}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v2, v1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v2}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lיˆ/ʽ;->ᵎﹶ(Ljava/lang/String;)Lʿʼ/ﾞʻ;

    move-result-object v0

    check-cast v0, Lʿʼ/ˈ;

    :goto_1
    invoke-virtual {p1, v1}, Lˎᴵ/ﹳٴ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lʿʼ/ˈ;->ﹳᐧ(Lˎᴵ/ﹳٴ;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lᵢ/ﹳٴ;

    move-result-object v0
    :try_end_0
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v0, Lᵢ/ﹳٴ;

    invoke-direct {v0, v9, p1, p0}, Lᵢ/ﹳٴ;-><init>(Lˊʾ/ˑﹳ;Lˎᴵ/ﹳٴ;Lʿʼ/ˈ;)V

    return-object v0

    :goto_2
    new-instance v1, Lcom/hierynomus/mssmb2/SMBApiException;

    sget-object v2, Lʼﹳ/ﾞʻ;->ᴵˊ:Lʼﹳ/ﾞʻ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot resolve path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/hierynomus/smbj/paths/PathResolveException;->ʾˋ:J

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
