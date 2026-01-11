.class public final Lˆי/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆי/ʽ;


# static fields
.field public static final ʽʽ:Ljava/nio/charset/Charset;


# instance fields
.field public final ʾˋ:Ljava/io/File;

.field public ᴵˊ:Lˆי/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lˆי/ˉʿ;->ʽʽ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆי/ˉʿ;->ʾˋ:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final ʾᵎ(Ljava/lang/String;J)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˆי/ˉʿ;->ⁱˊ()V

    const-string v0, " "

    const-string v1, "..."

    iget-object v2, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4000

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    const-string v1, "\r"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d %s%n"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {v0, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lˆי/ˉʿ;->ʽʽ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object p2, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    invoke-virtual {p2, p1}, Lˆי/ٴﹶ;->ʽ([B)V

    :goto_1
    iget-object p1, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    invoke-virtual {p1}, Lˆי/ٴﹶ;->ـˆ()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    invoke-virtual {p1}, Lˆי/ٴﹶ;->ʿᵢ()I

    move-result p1

    const/high16 p2, 0x10000

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    invoke-virtual {p1}, Lˆי/ٴﹶ;->ᵎˊ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    const-string p2, "There was a problem writing to the Crashlytics log."

    const-string p3, "FirebaseCrashlytics"

    nop

    return-void
.end method

.method public final ᵔᵢ()Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v0, p0, Lˆי/ˉʿ;->ʾˋ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v4, v2

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lˆי/ˉʿ;->ⁱˊ()V

    iget-object v0, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array {v1}, [I

    move-result-object v3

    invoke-virtual {v0}, Lˆי/ٴﹶ;->ʿᵢ()I

    move-result v0

    new-array v0, v0, [B

    :try_start_0
    iget-object v4, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    new-instance v5, Lˆי/ˑﹳ;

    invoke-direct {v5, v0, v3}, Lˆי/ˑﹳ;-><init>([B[I)V

    invoke-virtual {v4, v5}, Lˆי/ٴﹶ;->ﹳᐧ(Lˆי/ˆʾ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    const-string v6, "FirebaseCrashlytics"

    nop

    :goto_1
    new-instance v4, Lˆי/ﾞʻ;

    aget v3, v3, v1

    invoke-direct {v4, v3, v0}, Lˆי/ﾞʻ;-><init>(I[B)V

    :goto_2
    if-nez v4, :cond_2

    move-object v3, v2

    goto :goto_3

    :cond_2
    iget v0, v4, Lˆי/ﾞʻ;->ﹳٴ:I

    new-array v3, v0, [B

    iget-object v4, v4, Lˆי/ﾞʻ;->ⁱˊ:[B

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lˆי/ˉʿ;->ʽʽ:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˆי/ˉʿ;->ʾˋ:Ljava/io/File;

    iget-object v1, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lˆי/ٴﹶ;

    invoke-direct {v1, v0}, Lˆי/ٴﹶ;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open log file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    nop

    :cond_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    iget-object v0, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lˆי/ˉʿ;->ᴵˊ:Lˆי/ٴﹶ;

    return-void
.end method
