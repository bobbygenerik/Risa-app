.class public final Lˈـ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ٴﹶ;


# instance fields
.field public volatile ʽʽ:Z

.field public final ʾˋ:Ljava/io/DataInputStream;

.field public final synthetic ˈٴ:Lˈـ/ᵢˏ;

.field public final ᴵˊ:Lˈـ/ـˆ;


# direct methods
.method public constructor <init>(Lˈـ/ᵢˏ;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ʾᵎ;->ˈٴ:Lˈـ/ᵢˏ;

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    new-instance p1, Lˈـ/ـˆ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p1, Lˈـ/ـˆ;->ﹳٴ:I

    iput-object p1, p0, Lˈـ/ʾᵎ;->ᴵˊ:Lˈـ/ـˆ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 13

    .prologue
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lˈـ/ʾᵎ;->ʽʽ:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    new-array v3, v1, [B

    iget-object v4, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v1, p0, Lˈـ/ʾᵎ;->ˈٴ:Lˈـ/ᵢˏ;

    iget-object v1, v1, Lˈـ/ᵢˏ;->ʽʽ:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ᵎⁱ;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˈـ/ʾᵎ;->ˈٴ:Lˈـ/ᵢˏ;

    iget-boolean v1, v1, Lˈـ/ᵢˏ;->ˊʻ:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lˈـ/ᵎⁱ;->ᴵᵔ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lˈـ/ʾᵎ;->ˈٴ:Lˈـ/ᵢˏ;

    iget-boolean v1, v1, Lˈـ/ᵢˏ;->ˊʻ:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lˈـ/ʾᵎ;->ˈٴ:Lˈـ/ᵢˏ;

    iget-object v1, v1, Lˈـ/ᵢˏ;->ʾˋ:Lﹶﾞ/ⁱי;

    iget-object v3, p0, Lˈـ/ʾᵎ;->ᴵˊ:Lˈـ/ـˆ;

    iget-object v4, p0, Lˈـ/ʾᵎ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lˈـ/ـˆ;->ʽ(BLjava/io/DataInputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lˈـ/ـˆ;->ﹳٴ([B)Lʼʻ/ᵎⁱ;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    iget v0, v3, Lˈـ/ـˆ;->ﹳٴ:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    iget-wide v6, v3, Lˈـ/ـˆ;->ⁱˊ:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    invoke-static {v6, v7}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v0, v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-array v6, v0, [B

    invoke-virtual {v4, v6, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v10, v3, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget v11, v3, Lˈـ/ـˆ;->ﹳٴ:I

    if-ne v11, v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-lez v0, :cond_5

    add-int/lit8 v5, v0, -0x1

    aget-byte v11, v6, v5

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    if-le v0, v7, :cond_4

    add-int/lit8 v0, v0, -0x2

    aget-byte v11, v6, v0

    const/16 v12, 0xd

    if-ne v11, v12, :cond_4

    new-instance v5, Ljava/lang/String;

    sget-object v11, Lˈـ/ᵢˏ;->ٴᵢ:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v2, v0, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/String;

    sget-object v11, Lˈـ/ᵢˏ;->ٴᵢ:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v2, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v5, v0

    :goto_4
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    iget-object v5, v3, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iput v7, v3, Lˈـ/ـˆ;->ﹳٴ:I

    iput-wide v8, v3, Lˈـ/ـˆ;->ⁱˊ:J

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body is empty or does not end with a LF."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expects a greater than zero Content-Length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-static {v0, v4}, Lˈـ/ـˆ;->ʽ(BLjava/io/DataInputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lˈـ/ـˆ;->ﹳٴ([B)Lʼʻ/ᵎⁱ;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v2, v1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lʻʿ/ᵔʾ;

    const/16 v4, 0xc

    invoke-direct {v3, v1, v4, v0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final ʽﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˈـ/ʾᵎ;->ʽʽ:Z

    return-void
.end method
