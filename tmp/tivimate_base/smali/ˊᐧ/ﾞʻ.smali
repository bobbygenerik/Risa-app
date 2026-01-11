.class public abstract Lˊᐧ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ʾˋ:Lˊᐧ/ﹳᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lˊᐧ/יـ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lˊᐧ/ﹳᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lˊᐧ/ﾞʻ;->ʾˋ:Lˊᐧ/ﹳᐧ;

    sget-object v0, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    new-instance v0, Lⁱٴ/ˑﹳ;

    const-class v1, Lⁱٴ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lⁱٴ/ˑﹳ;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public abstract ʽ(Lˊᐧ/ʽﹳ;Lˊᐧ/ʽﹳ;)V
.end method

.method public abstract ʾˋ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᵔﹳ;
.end method

.method public abstract ˈٴ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᵔﹳ;
.end method

.method public abstract ˉˆ(Lˊᐧ/ʽﹳ;)V
.end method

.method public abstract ـˆ(Lˊᐧ/ʽﹳ;)Lʼﾞ/ᴵˊ;
.end method

.method public abstract ᵎˊ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᴵˊ;
.end method

.method public abstract ᵎﹶ(Lˊᐧ/ʽﹳ;)V
.end method

.method public final ﹳᐧ(Lˊᐧ/ʽﹳ;)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lˊᐧ/ﾞʻ;->ـˆ(Lˊᐧ/ʽﹳ;)Lʼﾞ/ᴵˊ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
