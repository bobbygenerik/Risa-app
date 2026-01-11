.class public final Lᵢˉ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/util/List;

.field public static final ˈ:Lᵢˉ/ﹳٴ;

.field public static final ⁱˊ:Lˊᐧ/ʼˎ;


# instance fields
.field public final ﹳٴ:Landroidx/leanback/widget/ʻٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    new-instance v2, Lˊᐧ/ʼˎ;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lˊᐧ/ʼˎ;-><init>([B)V

    sput-object v2, Lᵢˉ/ﹳٴ;->ⁱˊ:Lˊᐧ/ʼˎ;

    const-string v0, "*"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lᵢˉ/ﹳٴ;->ʽ:Ljava/util/List;

    new-instance v0, Lᵢˉ/ﹳٴ;

    new-instance v1, Landroidx/leanback/widget/ʻٴ;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    invoke-direct {v0, v1}, Lᵢˉ/ﹳٴ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    sput-object v0, Lᵢˉ/ﹳٴ;->ˈ:Lᵢˉ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵢˉ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ʻٴ;

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Lﹶˑ/ˆʾ;->ᐧˎ(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lﹶˈ/ˆʾ;->ـᵎ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    move v1, v3

    :cond_0
    if-ltz v1, :cond_8

    sget-object v2, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    invoke-static {p0}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v1, v0, :cond_3

    invoke-static {p0}, Lﹶˈ/ˆʾ;->ـﹶ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    if-ne v5, v1, :cond_4

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_6

    move-object v2, v4

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_7
    :goto_0
    return-object v2

    :cond_8
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {v1, p0, v0}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lᵢˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    iget-object v2, p0, Lᵢˉ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ʻٴ;

    iget-object v3, v2, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, v2, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroidx/leanback/widget/ʻٴ;->ᵔﹳ()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_1
    sget-object v7, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v7, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    const-string v8, "Failed to read public suffix list"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9, v6}, Lـᐧ/ˑﹳ;->ˆʾ(Ljava/lang/String;ILjava/lang/Throwable;)V

    if-eqz v3, :cond_2

    goto :goto_1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p1

    :cond_1
    :try_start_2
    iget-object v3, v2, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_3
    iget-object v3, v2, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lˊᐧ/ʼˎ;

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lˊᐧ/ʼˎ;

    move v6, v5

    :goto_4
    if-ge v6, v2, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lˊᐧ/ʼˎ;

    sget-object v9, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v7, v8, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    aput-object v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v5

    :goto_5
    const/4 v7, 0x0

    if-ge v6, v2, :cond_6

    iget-object v8, p0, Lᵢˉ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ʻٴ;

    iget-object v8, v8, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v8, Lˊᐧ/ʼˎ;

    if-eqz v8, :cond_4

    goto :goto_6

    :cond_4
    move-object v8, v7

    :goto_6
    invoke-static {v8, v3, v6}, Lᵔﹶ/ᴵˊ;->ﹳٴ(Lˊᐧ/ʼˎ;[Lˊᐧ/ʼˎ;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object v8, v7

    :goto_7
    if-le v2, v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lˊᐧ/ʼˎ;

    array-length v9, v6

    sub-int/2addr v9, v4

    move v10, v5

    :goto_8
    if-ge v10, v9, :cond_9

    sget-object v11, Lᵢˉ/ﹳٴ;->ⁱˊ:Lˊᐧ/ʼˎ;

    aput-object v11, v6, v10

    iget-object v11, p0, Lᵢˉ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ʻٴ;

    iget-object v11, v11, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v11, Lˊᐧ/ʼˎ;

    if-eqz v11, :cond_7

    goto :goto_9

    :cond_7
    move-object v11, v7

    :goto_9
    invoke-static {v11, v6, v10}, Lᵔﹶ/ᴵˊ;->ﹳٴ(Lˊᐧ/ʼˎ;[Lˊᐧ/ʼˎ;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    move-object v11, v7

    :goto_a
    if-eqz v11, :cond_c

    sub-int/2addr v2, v4

    move v6, v5

    :goto_b
    if-ge v6, v2, :cond_c

    iget-object v9, p0, Lᵢˉ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ʻٴ;

    iget-object v9, v9, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v9, Lˊᐧ/ʼˎ;

    if-eqz v9, :cond_a

    goto :goto_c

    :cond_a
    move-object v9, v7

    :goto_c
    invoke-static {v9, v3, v6}, Lᵔﹶ/ᴵˊ;->ﹳٴ(Lˊᐧ/ʼˎ;[Lˊᐧ/ʼˎ;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    goto :goto_d

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_c
    move-object v9, v7

    :goto_d
    const/16 v2, 0x2e

    if-eqz v9, :cond_d

    const-string v1, "!"

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [C

    aput-char v2, v3, v5

    invoke-static {v1, v3}, Lﹶˑ/ˆʾ;->ᐧˎ(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v1

    goto :goto_f

    :cond_d
    if-nez v8, :cond_e

    if-nez v11, :cond_e

    sget-object v1, Lᵢˉ/ﹳٴ;->ʽ:Ljava/util/List;

    goto :goto_f

    :cond_e
    if-eqz v8, :cond_f

    new-array v3, v4, [C

    aput-char v2, v3, v5

    invoke-static {v8, v3}, Lﹶˑ/ˆʾ;->ᐧˎ(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v3

    goto :goto_e

    :cond_f
    move-object v3, v1

    :goto_e
    if-eqz v11, :cond_10

    new-array v1, v4, [C

    aput-char v2, v1, v5

    invoke-static {v11, v1}, Lﹶˑ/ˆʾ;->ᐧˎ(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v1

    :cond_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v2, v6, :cond_11

    move-object v1, v3

    :cond_11
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x21

    if-ne v2, v3, :cond_12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_12

    return-object v7

    :cond_12
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_10
    sub-int/2addr v0, v1

    goto :goto_11

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_10

    :goto_11
    invoke-static {p1}, Lᵢˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lʼᴵ/ˑﹳ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lʼᴵ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    if-ltz v0, :cond_15

    if-nez v0, :cond_14

    goto :goto_12

    :cond_14
    new-instance p1, Lʼᴵ/ʽ;

    invoke-direct {p1, v1, v0}, Lʼᴵ/ʽ;-><init>(Lʼᴵ/ﾞᴵ;I)V

    move-object v1, p1

    :goto_12
    const-string p1, "."

    invoke-static {v1, p1}, Lʼᴵ/ᵔᵢ;->ᵎⁱ(Lʼᴵ/ﾞᴵ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p1, "Requested element count "

    const-string v1, " is less than zero."

    invoke-static {v0, p1, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resource."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
