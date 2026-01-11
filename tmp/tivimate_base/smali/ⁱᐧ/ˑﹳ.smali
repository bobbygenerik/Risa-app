.class public abstract Lⁱᐧ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/lang/String;

.field public static final ﹳٴ:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GMT"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    const-class v0, Lˎᵢ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "okhttp3."

    invoke-static {v0, v1}, Lﹶˑ/ˆʾ;->ˎᐧ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v0, v1}, Lﹶˑ/ˆʾ;->יﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱᐧ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method

.method public static final ʼˎ(Lˎᵢ/ʼᐧ;Z)Ljava/lang/String;
    .locals 4

    .prologue
    iget v0, p0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget-object v1, p0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    const-string v2, ":"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lﹶˑ/ˆʾ;->ˏᵢ(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "["

    const/16 v3, 0x5d

    invoke-static {v3, v2, v1}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez p1, :cond_4

    iget-object p0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    const-string p1, "http"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x50

    goto :goto_0

    :cond_1
    const-string p1, "https"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ʽ(Ljava/net/Socket;)V
    .locals 2

    .prologue
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio == null"

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method

.method public static final ˆʾ(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ˑﹳ(Lˎᵢ/ʽʽ;)J
    .locals 3

    .prologue
    iget-object p0, p0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    sget-object v2, Lⁱᐧ/ʽ;->ﹳٴ:[B

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final ٴﹶ([Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p0
.end method

.method public static final ᵎﹶ(Lˊᐧ/ᴵˊ;I)Z
    .locals 12

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v3

    invoke-virtual {v3}, Lˊᐧ/ˈٴ;->ˑﹳ()Z

    move-result v3

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v3

    invoke-virtual {v3}, Lˊᐧ/ˈٴ;->ʽ()J

    move-result-wide v6

    sub-long/2addr v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v3

    int-to-long v8, p1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v1

    invoke-virtual {v3, v8, v9}, Lˊᐧ/ˈٴ;->ˈ(J)Lˊᐧ/ˈٴ;

    :try_start_0
    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, p1, v8, v9}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lˊᐧ/ﾞᴵ;->ـˆ()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    cmp-long p1, v6, v4

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    invoke-virtual {p0}, Lˊᐧ/ˈٴ;->ﹳٴ()Lˊᐧ/ˈٴ;

    return v0

    :cond_2
    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lˊᐧ/ˈٴ;->ˈ(J)Lˊᐧ/ˈٴ;

    return v0

    :goto_2
    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    invoke-virtual {p0}, Lˊᐧ/ˈٴ;->ﹳٴ()Lˊᐧ/ˈٴ;

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lˊᐧ/ˈٴ;->ˈ(J)Lˊᐧ/ˈٴ;

    :goto_3
    throw p1

    :catch_0
    cmp-long p1, v6, v4

    if-nez p1, :cond_4

    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    invoke-virtual {p0}, Lˊᐧ/ˈٴ;->ﹳٴ()Lˊᐧ/ˈٴ;

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lˊᐧ/ˈٴ;->ˈ(J)Lˊᐧ/ˈٴ;

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final ᵔᵢ(Ljava/util/List;)Lˎᵢ/ˉˆ;
    .locals 3

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔᐧ/ⁱˊ;

    iget-object v2, v1, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    iget-object v1, v1, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v2}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lˎᵢ/ˉˆ;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lˎᵢ/ˉˆ;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public static final ⁱˊ()I
    .locals 6

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const-string v3, "timeout"

    if-gtz v2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    const-string v0, " too small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, " too large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final ﹳٴ(Lˎᵢ/ʼᐧ;Lˎᵢ/ʼᐧ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v1, p1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget v1, p1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ﾞᴵ(Lˊᐧ/ᵔᵢ;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    sget-object v0, Lⁱᐧ/ʽ;->ⁱˊ:Lˊᐧ/ˏי;

    invoke-interface {p0, v0}, Lˊᐧ/ᵔᵢ;->ـˏ(Lˊᐧ/ˏי;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    sget-object p0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    sget-object p0, Lﹶˑ/ﹳٴ;->ﾞᴵ:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const-string p0, "UTF-32BE"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    sput-object p0, Lﹶˑ/ﹳٴ;->ﾞᴵ:Ljava/nio/charset/Charset;

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Lﹶˑ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    return-object p0

    :cond_3
    sget-object p0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    sget-object p0, Lﹶˑ/ﹳٴ;->ˑﹳ:Ljava/nio/charset/Charset;

    if-nez p0, :cond_4

    const-string p0, "UTF-32LE"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    sput-object p0, Lﹶˑ/ﹳٴ;->ˑﹳ:Ljava/nio/charset/Charset;

    :cond_4
    return-object p0

    :cond_5
    sget-object p0, Lﹶˑ/ﹳٴ;->ⁱˊ:Ljava/nio/charset/Charset;

    return-object p0

    :cond_6
    sget-object p0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    return-object p0

    :cond_7
    return-object p1
.end method
