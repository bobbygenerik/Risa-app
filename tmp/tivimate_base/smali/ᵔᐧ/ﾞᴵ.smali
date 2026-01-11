.class public abstract Lᵔᐧ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:[Ljava/lang/String;

.field public static final ˈ:[Ljava/lang/String;

.field public static final ⁱˊ:[Ljava/lang/String;

.field public static final ﹳٴ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lᵔᐧ/ﾞᴵ;->ﹳٴ:Lˊᐧ/ʼˎ;

    const-string v11, "WINDOW_UPDATE"

    const-string v12, "CONTINUATION"

    const-string v3, "DATA"

    const-string v4, "HEADERS"

    const-string v5, "PRIORITY"

    const-string v6, "RST_STREAM"

    const-string v7, "SETTINGS"

    const-string v8, "PUSH_PROMISE"

    const-string v9, "PING"

    const-string v10, "GOAWAY"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ﾞᴵ;->ⁱˊ:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v3, v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    const-string v6, "%8s"

    invoke-static {v6, v5}, Lⁱᐧ/ˑﹳ;->ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lᵔᐧ/ﾞᴵ;->ˈ:[Ljava/lang/String;

    sget-object v0, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "END_STREAM"

    aput-object v1, v0, v5

    filled-new-array {v5}, [I

    move-result-object v1

    const-string v3, "PADDED"

    const/16 v5, 0x8

    aput-object v3, v0, v5

    aget v3, v1, v2

    or-int/lit8 v6, v3, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    const-string v8, "|PADDED"

    invoke-static {v7, v3, v8}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const-string v3, "END_HEADERS"

    const/4 v6, 0x4

    aput-object v3, v0, v6

    const-string v3, "PRIORITY"

    aput-object v3, v0, v4

    const-string v3, "END_HEADERS|PRIORITY"

    const/16 v7, 0x24

    aput-object v3, v0, v7

    filled-new-array {v6, v4, v7}, [I

    move-result-object v0

    move v3, v2

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    aget v6, v1, v2

    sget-object v7, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    or-int v9, v6, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v7, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v12, v7, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    or-int/2addr v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v7, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v7, v4

    invoke-static {v10, v4, v8}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    array-length v0, v0

    :goto_2
    if-ge v2, v0, :cond_3

    sget-object v1, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    sget-object v3, Lᵔᐧ/ﾞᴵ;->ˈ:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static ʽ(IIJZ)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v0, 0x8

    invoke-static {v0}, Lᵔᐧ/ﾞᴵ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string p4, "<<"

    goto :goto_0

    :cond_0
    const-string p4, ">>"

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, p3, v1

    const/4 p4, 0x1

    aput-object p0, p3, p4

    const/4 p0, 0x2

    aput-object p1, p3, p0

    const/4 p0, 0x3

    aput-object v0, p3, p0

    const/4 p0, 0x4

    aput-object p2, p3, p0

    const-string p0, "%s 0x%08x %5d %-13s %d"

    invoke-static {p0, p3}, Lⁱᐧ/ˑﹳ;->ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(ZIIII)Ljava/lang/String;
    .locals 10

    .prologue
    invoke-static {p3}, Lᵔᐧ/ﾞᴵ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez p4, :cond_0

    const-string p3, ""

    goto :goto_1

    :cond_0
    sget-object v7, Lᵔᐧ/ﾞᴵ;->ˈ:[Ljava/lang/String;

    if-eq p3, v4, :cond_6

    if-eq p3, v3, :cond_6

    if-eq p3, v6, :cond_4

    const/4 v8, 0x6

    if-eq p3, v8, :cond_4

    const/4 v8, 0x7

    if-eq p3, v8, :cond_6

    const/16 v8, 0x8

    if-eq p3, v8, :cond_6

    sget-object v8, Lᵔᐧ/ﾞᴵ;->ʽ:[Ljava/lang/String;

    array-length v9, v8

    if-ge p4, v9, :cond_1

    aget-object v7, v8, p4

    goto :goto_0

    :cond_1
    aget-object v7, v7, p4

    :goto_0
    if-ne p3, v2, :cond_2

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_2

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    invoke-static {v7, p3, p4, v5}, Lﹶˑ/ᵔﹳ;->ʿᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_3

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    invoke-static {v7, p3, p4, v5}, Lﹶˑ/ᵔﹳ;->ʿᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v7

    goto :goto_1

    :cond_4
    if-ne p4, v1, :cond_5

    const-string p3, "ACK"

    goto :goto_1

    :cond_5
    aget-object p3, v7, p4

    goto :goto_1

    :cond_6
    aget-object p3, v7, p4

    :goto_1
    if-eqz p0, :cond_7

    const-string p0, "<<"

    goto :goto_2

    :cond_7
    const-string p0, ">>"

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p0, p4, v5

    aput-object p1, p4, v1

    aput-object p2, p4, v4

    aput-object v0, p4, v3

    aput-object p3, p4, v6

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lⁱᐧ/ˑﹳ;->ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ﹳٴ(I)Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lᵔᐧ/ﾞᴵ;->ⁱˊ:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "0x%02x"

    invoke-static {p0, v0}, Lⁱᐧ/ˑﹳ;->ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
