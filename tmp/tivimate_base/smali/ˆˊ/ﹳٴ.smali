.class public final enum Lˆˊ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ˈٴ:Lˆˊ/ﹳٴ;

.field public static final synthetic ᴵᵔ:[Lˆˊ/ﹳٴ;


# instance fields
.field public final ʽʽ:Lﾞˉ/ⁱˊ;

.field public final ʾˋ:Ljava/lang/String;

.field public final ᴵˊ:Lﾞˉ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lˆˊ/ﹳٴ;

    sget-object v4, Lﾞˉ/ⁱˊ;->ˊʻ:Lﾞˉ/ⁱˊ;

    sget-object v10, Lﾞˉ/ⁱˊ;->ᵎˊ:Lﾞˉ/ⁱˊ;

    const-string v1, "WINREG"

    const/4 v2, 0x0

    const-string v3, "winreg"

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    new-instance v5, Lˆˊ/ﹳٴ;

    sget-object v9, Lﾞˉ/ⁱˊ;->ٴᵢ:Lﾞˉ/ⁱˊ;

    const-string v6, "SRVSVC"

    const/4 v7, 0x1

    const-string v8, "srvsvc"

    invoke-direct/range {v5 .. v10}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    move-object v1, v5

    move-object v2, v9

    sput-object v1, Lˆˊ/ﹳٴ;->ˈٴ:Lˆˊ/ﹳٴ;

    new-instance v5, Lˆˊ/ﹳٴ;

    const-string v8, "lsarpc"

    sget-object v9, Lﾞˉ/ⁱˊ;->ˉٴ:Lﾞˉ/ⁱˊ;

    const-string v6, "LSASVC"

    const/4 v7, 0x2

    invoke-direct/range {v5 .. v10}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    move-object v3, v5

    new-instance v5, Lˆˊ/ﹳٴ;

    const-string v8, "samr"

    sget-object v9, Lﾞˉ/ⁱˊ;->ᵎⁱ:Lﾞˉ/ⁱˊ;

    const-string v6, "SAMSVC"

    const/4 v7, 0x3

    invoke-direct/range {v5 .. v10}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    move-object v4, v5

    new-instance v5, Lˆˊ/ﹳٴ;

    const/4 v7, 0x4

    const-string v8, "browser"

    const-string v6, "BROWSER_SRVSVC"

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    move-object v2, v5

    new-instance v5, Lˆˊ/ﹳٴ;

    const-string v8, "svcctl"

    sget-object v9, Lﾞˉ/ⁱˊ;->ٴʼ:Lﾞˉ/ⁱˊ;

    const-string v6, "SVCCTL"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v10}, Lˆˊ/ﹳٴ;-><init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    const/4 v6, 0x6

    new-array v6, v6, [Lˆˊ/ﹳٴ;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lˆˊ/ﹳٴ;->ᴵᵔ:[Lˆˊ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lˆˊ/ﹳٴ;->ʾˋ:Ljava/lang/String;

    iput-object p4, p0, Lˆˊ/ﹳٴ;->ᴵˊ:Lﾞˉ/ⁱˊ;

    iput-object p5, p0, Lˆˊ/ﹳٴ;->ʽʽ:Lﾞˉ/ⁱˊ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˆˊ/ﹳٴ;
    .locals 1

    const-class v0, Lˆˊ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˆˊ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lˆˊ/ﹳٴ;
    .locals 1

    sget-object v0, Lˆˊ/ﹳٴ;->ᴵᵔ:[Lˆˊ/ﹳٴ;

    invoke-virtual {v0}, [Lˆˊ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˆˊ/ﹳٴ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ(Lיˆ/ʽ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;
    .locals 6

    .prologue
    const-string v0, "IPC$"

    invoke-virtual {p1, v0}, Lיˆ/ʽ;->ᵎﹶ(Ljava/lang/String;)Lʿʼ/ﾞʻ;

    move-result-object v0

    instance-of v1, v0, Lʿʼ/ʼˎ;

    iget-object v2, p0, Lˆˊ/ﹳٴ;->ʾˋ:Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Lʿʼ/ʼˎ;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :try_start_0
    new-instance v4, Lـʿ/ﹳٴ;

    invoke-direct {v4, p1, v0, v2}, Lـʿ/ﹳٴ;-><init>(Lיˆ/ʽ;Lʿʼ/ʼˎ;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/rapid7/helper/smbj/io/SMB2Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lـʿ/ﹳٴ;)V

    new-instance v0, Lﹳˈ/ﹳٴ;

    iget-object v1, p0, Lˆˊ/ﹳٴ;->ᴵˊ:Lﾞˉ/ⁱˊ;

    iget-object v2, p0, Lˆˊ/ﹳٴ;->ʽʽ:Lﾞˉ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹳˈ/ﹳٴ;-><init>(Lﾞˉ/ⁱˊ;Lﾞˉ/ⁱˊ;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lˊⁱ/ˑﹳ;

    invoke-direct {v3, v2}, Lˊⁱ/ˑﹳ;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    iput v4, v0, Lﾞˉ/ﹳٴ;->ˆʾ:I

    sget-object v4, Lﾞˉ/ˑﹳ;->ᴵˊ:Lﾞˉ/ˑﹳ;

    sget-object v5, Lﾞˉ/ˑﹳ;->ʽʽ:Lﾞˉ/ˑﹳ;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    invoke-virtual {v0, v3}, Lﹳˈ/ﹳٴ;->ᵎⁱ(Lˊⁱ/ˑﹳ;)V

    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    new-array v0, v0, [B

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ([B[B)I

    move-result v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v0, Lـʾ/ᵔﹳ;

    invoke-direct {v0, v3}, Lـʾ/ᵔﹳ;-><init>(Ljava/io/ByteArrayInputStream;)V

    new-instance v2, Lﹳˈ/ⁱˊ;

    invoke-direct {v2}, Lﾞˉ/ﹳٴ;-><init>()V

    invoke-virtual {v2, v0}, Lﹳˈ/ⁱˊ;->ٴʼ(Lـʾ/ᵔﹳ;)V

    sget-object v0, Lﾞˉ/ˈ;->ٴᵢ:Lﾞˉ/ˈ;

    iget-object v3, v2, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, v2, Lﹳˈ/ⁱˊ;->ٴﹶ:S

    iput v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    iget-object v0, v1, Lﾞˉ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    iget-object v1, v1, Lﾞˉ/ⁱˊ;->ᴵˊ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BIND "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") failed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/rapid7/helper/smbj/io/SMB2Exception;->ʾˋ:Lٴˎ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_1

    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    throw p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    throw p1

    :cond_3
    new-instance p1, Lcom/hierynomus/smbj/common/SMBException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown error when opening pipe: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lʿʼ/ﾞʻ;->ʾˋ:Lˎᴵ/ﹳٴ;

    invoke-virtual {v0}, Lˎᴵ/ﹳٴ;->ⁱˊ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/hierynomus/protocol/transport/TransportException;

    const-string v0, " not a named pipe."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
