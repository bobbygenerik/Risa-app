.class public abstract Lﾞʼ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lٴﾞ/ˆʾ;

.field public static final ˈ:Z

.field public static final ˑﹳ:[Ljava/lang/String;

.field public static final ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public static volatile ﹳٴ:I

.field public static final ﾞᴵ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(I)V

    sput-object v0, Lﾞʼ/ⁱˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    new-instance v0, Lٴﾞ/ˆʾ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Lﾞʼ/ⁱˊ;->ʽ:Lٴﾞ/ˆʾ;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lﾞʼ/ⁱˊ;->ˈ:Z

    const-string v0, "1.6"

    const-string v1, "1.7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﾞʼ/ⁱˊ;->ˑﹳ:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lﾞʼ/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    return-void
.end method

.method public static ʼˎ(Ljava/util/LinkedHashSet;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Actual binding is of type ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ʽ()V
    .locals 6

    .prologue
    sget-object v0, Lﾞʼ/ⁱˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lʽٴ/ⁱˊ;

    iget-object v5, v4, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    invoke-static {v5}, Lﾞʼ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;)Lﾞʼ/ﹳٴ;

    move-result-object v5

    iput-object v5, v4, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ˆʾ(Ljava/util/LinkedHashSet;)V
    .locals 3

    .prologue
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "Class path contains multiple SLF4J bindings."

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found binding in ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {p0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static ˈ()Lorg/slf4j/ILoggerFactory;
    .locals 4

    .prologue
    sget v0, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Lﾞʼ/ⁱˊ;

    monitor-enter v0

    :try_start_0
    sget v3, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    if-nez v3, :cond_0

    sput v2, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    invoke-static {}, Lﾞʼ/ⁱˊ;->ﹳٴ()V

    sget v3, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    if-ne v3, v1, :cond_0

    invoke-static {}, Lﾞʼ/ⁱˊ;->ٴﹶ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget v0, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    sget-object v0, Lﾞʼ/ⁱˊ;->ʽ:Lٴﾞ/ˆʾ;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lﾞʼ/ⁱˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    return-object v0
.end method

.method public static ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;
    .locals 5

    .prologue
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sget-boolean v1, Lﾞʼ/ⁱˊ;->ˈ:Z

    if-eqz v1, :cond_6

    sget-object v1, Lʽٴ/ˈ;->ﹳٴ:Lʽٴ/ʽ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v1, Lʽٴ/ˈ;->ⁱˊ:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Lʽٴ/ʽ;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    sput-object v1, Lʽٴ/ˈ;->ﹳٴ:Lʽٴ/ʽ;

    const/4 v3, 0x1

    sput-boolean v3, Lʽٴ/ˈ;->ⁱˊ:Z

    :goto_1
    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Lʽٴ/ʽ;->getClassContext()[Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lʽٴ/ˈ;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    array-length v2, v1

    if-ge v3, v2, :cond_5

    add-int/lit8 v3, v3, 0x2

    array-length v2, v1

    if-ge v3, v2, :cond_5

    aget-object v2, v1, v3

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {v0}, Lﾞʼ/ﹳٴ;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detected logger name mismatch. Given name: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"; computed name: \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    invoke-static {p0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_5
    return-object v0
.end method

.method public static final ٴﹶ()V
    .locals 6

    .prologue
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    sget-object v1, Lﾞʼ/ⁱˊ;->ˑﹳ:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lﾞʼ/ⁱˊ;->ˑﹳ:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Reported exception:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_0
    :cond_2
    return-void
.end method

.method public static ᵎﹶ()Z
    .locals 2

    .prologue
    const-string v0, "java.vendor.url"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static ᵔᵢ()V
    .locals 12

    .prologue
    sget-object v0, Lﾞʼ/ⁱˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_9

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lﹶʻ/ﹳٴ;

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    iget-object v9, v8, Lﹶʻ/ﹳٴ;->ﹳٴ:Lʽٴ/ⁱˊ;

    iget-object v10, v9, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    iget-object v11, v9, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    if-eqz v11, :cond_8

    iget-object v11, v9, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    instance-of v11, v11, Lʽٴ/ﹳٴ;

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lʽٴ/ⁱˊ;->ˈ()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Lʽٴ/ⁱˊ;->ˈ()Z

    move-result v10

    if-eqz v10, :cond_4

    :try_start_0
    iget-object v10, v9, Lʽٴ/ⁱˊ;->ˈٴ:Ljava/lang/reflect/Method;

    iget-object v9, v9, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    invoke-static {v10}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v9, v5, 0x1

    if-nez v5, :cond_7

    iget-object v5, v8, Lﹶʻ/ﹳٴ;->ﹳٴ:Lʽٴ/ⁱˊ;

    invoke-virtual {v5}, Lʽٴ/ⁱˊ;->ˈ()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "A number ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "See also http://www.slf4j.org/codes.html#replay"

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v5, v8, Lﹶʻ/ﹳٴ;->ﹳٴ:Lʽٴ/ⁱˊ;

    iget-object v5, v5, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    instance-of v5, v5, Lʽٴ/ﹳٴ;

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, "The following set of substitute loggers may have been accessed"

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "during the initialization phase. Logging calls during this"

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "phase were not honored. However, subsequent logging calls to these"

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "loggers will work as normally expected."

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v5, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v5}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v5, v9

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate logger cannot be null at this state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method public static ⁱˊ()Ljava/util/LinkedHashSet;
    .locals 4

    .prologue
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    const-class v1, Lﾞʼ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lﾞʼ/ⁱˊ;->ﾞᴵ:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :goto_1
    const-string v2, "Error getting resources from path"

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Reported exception:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static final ﹳٴ()V
    .locals 6

    .prologue
    const-string v0, "Reported exception:"

    const-string v1, "Failed to instantiate SLF4J LoggerFactory"

    const/4 v2, 0x2

    :try_start_0
    invoke-static {}, Lﾞʼ/ⁱˊ;->ᵎﹶ()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lﾞʼ/ⁱˊ;->ⁱˊ()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v3}, Lﾞʼ/ⁱˊ;->ˆʾ(Ljava/util/LinkedHashSet;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    const/4 v4, 0x3

    sput v4, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    invoke-static {v3}, Lﾞʼ/ⁱˊ;->ʼˎ(Ljava/util/LinkedHashSet;)V

    invoke-static {}, Lﾞʼ/ⁱˊ;->ʽ()V

    invoke-static {}, Lﾞʼ/ⁱˊ;->ᵔᵢ()V

    sget-object v3, Lﾞʼ/ⁱˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sput v2, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected initialization failure"

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput v2, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v1}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v1, "Your binding is version 1.5.5 or earlier."

    invoke-static {v1}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v1, "Upgrade your binding to version 1.6.x."

    invoke-static {v1}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    :cond_1
    throw v0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    :cond_2
    const-string v5, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_4
    const/4 v0, 0x4

    sput v0, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v0}, Lʽٴ/ˈ;->ـˆ(Ljava/lang/String;)V

    return-void

    :cond_3
    sput v2, Lﾞʼ/ⁱˊ;->ﹳٴ:I

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    throw v3
.end method

.method public static ﾞᴵ(Ljava/lang/String;)Lﾞʼ/ﹳٴ;
    .locals 1

    invoke-static {}, Lﾞʼ/ⁱˊ;->ˈ()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->ⁱˊ(Ljava/lang/String;)Lﾞʼ/ﹳٴ;

    move-result-object p0

    return-object p0
.end method
