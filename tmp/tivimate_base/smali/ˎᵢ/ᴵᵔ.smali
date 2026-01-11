.class public abstract Lˎᵢ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ʾˋ:Lˎᵢ/ˈٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lˊᐧ/ʼˎ;->ˈٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lˊᐧ/ʼˎ;->ᵔﹳ(Lˊᐧ/ﾞᴵ;I)V

    iget-object v1, v1, Lˊᐧ/ʼˎ;->ʾˋ:[B

    array-length v1, v1

    int-to-long v1, v1

    new-instance v3, Lˎᵢ/ˈٴ;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2, v0}, Lˎᵢ/ˈٴ;-><init>(Lˎᵢ/ﹳᐧ;JLˊᐧ/ﾞᴵ;)V

    sput-object v3, Lˎᵢ/ᴵᵔ;->ʾˋ:Lˎᵢ/ˈٴ;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v0

    invoke-static {v0}, Lⁱᐧ/ʽ;->ⁱˊ(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract ʽ()J
.end method

.method public abstract ˉˆ()Lˊᐧ/ᵔᵢ;
.end method

.method public abstract ᵎﹶ()Lˎᵢ/ﹳᐧ;
.end method

.method public final ﹳᐧ()Ljava/lang/String;
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "charset"

    iget-object v2, v2, Lˎᵢ/ﹳᐧ;->ʽ:[Ljava/lang/String;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔﹳ(III)I

    move-result v4

    if-ltz v4, :cond_1

    :goto_0
    aget-object v5, v2, v6

    invoke-static {v5, v3}, Lﹶˑ/ᵔﹳ;->ʿ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    if-eq v6, v4, :cond_1

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    :catch_0
    move-object v2, v1

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-nez v2, :cond_4

    :cond_3
    :try_start_2
    sget-object v2, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    :cond_4
    invoke-static {v0, v2}, Lⁱᐧ/ˑﹳ;->ﾞᴵ(Lˊᐧ/ᵔᵢ;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v2}, Lˊᐧ/ᵔᵢ;->ʻˋ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_3
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-static {v2, v0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    if-nez v2, :cond_6

    return-object v1

    :cond_6
    throw v2
.end method
