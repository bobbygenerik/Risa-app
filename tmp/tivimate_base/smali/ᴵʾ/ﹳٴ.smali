.class public abstract Lᴵʾ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ˈ;
.implements Lᴵʾ/ˈ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:Lˈי/ˈ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵʾ/ﹳٴ;->ʾˋ:Lˈי/ˈ;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵʾ/ﹳٴ;->ʼᐧ()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼᐧ()Ljava/lang/StackTraceElement;
    .locals 8

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lᴵʾ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lᴵʾ/ˑﹳ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->v()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_b

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sub-int/2addr v4, v3

    goto :goto_2

    :catch_0
    move v4, v2

    :goto_2
    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->l()[I

    move-result-object v2

    aget v2, v2, v4

    :goto_3
    sget-object v3, Lᴵʾ/ﾞᴵ;->ⁱˊ:Lˑי/ʽ;

    sget-object v4, Lᴵʾ/ﾞᴵ;->ﹳٴ:Lˑי/ʽ;

    if-nez v3, :cond_4

    :try_start_1
    const-class v3, Ljava/lang/Class;

    const-string v5, "getModule"

    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "java.lang.Module"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDescriptor"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v7, Lˑי/ʽ;

    invoke-direct {v7, v3, v5, v6}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v7, Lᴵʾ/ﾞᴵ;->ⁱˊ:Lˑי/ʽ;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v7

    goto :goto_4

    :catch_1
    sput-object v4, Lᴵʾ/ﾞᴵ;->ⁱˊ:Lˑי/ʽ;

    move-object v3, v4

    :cond_4
    :goto_4
    if-ne v3, v4, :cond_5

    goto :goto_6

    :cond_5
    iget-object v4, v3, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    iget-object v5, v3, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    iget-object v3, v3, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v1

    :goto_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    :cond_9
    :goto_6
    if-nez v1, :cond_a

    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lᴵʾ/ˑﹳ;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v4, v0, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Debug metadata version mismatch. Expected: 1, got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please update the Kotlin standard library."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˈ()Lᴵʾ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵʾ/ﹳٴ;->ʾˋ:Lˈי/ˈ;

    instance-of v1, v0, Lᴵʾ/ˈ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵʾ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    move-object v0, p0

    :goto_0
    check-cast v0, Lᴵʾ/ﹳٴ;

    iget-object v1, v0, Lᴵʾ/ﹳٴ;->ʾˋ:Lˈי/ˈ;

    :try_start_0
    invoke-virtual {v0, p1}, Lᴵʾ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Lʻᵢ/ﾞᴵ;

    invoke-direct {v2, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {v0}, Lᴵʾ/ﹳٴ;->ﹳᐧ()V

    instance-of v0, v1, Lᴵʾ/ﹳٴ;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public ﹳᐧ()V
    .locals 0

    return-void
.end method
