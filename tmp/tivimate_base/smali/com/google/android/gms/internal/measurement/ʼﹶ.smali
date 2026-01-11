.class public abstract Lcom/google/android/gms/internal/measurement/ʼﹶ;
.super Lcom/google/android/gms/internal/measurement/ﾞי;
.source "SourceFile"


# static fields
.field private static final zzd:Ljava/util/Map;


# instance fields
.field private zzb:I

.field protected zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ﾞי;->zza:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʽᵎ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzc:Lcom/google/android/gms/internal/measurement/ʽᵎ;

    return-void
.end method

.method public static ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ﾞᴵ()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs ᵔʾ(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/ʼﹶ;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ﾞʻ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ʼﹶ;
    .locals 4

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ﹶʾ;->ˑﹳ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/ʼﹶ;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ˆʾ(Lcom/google/android/gms/internal/measurement/ʼﹶ;Lcom/google/android/gms/internal/measurement/ʼﹶ;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﾞי;->zza:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ﾞי;->zza:I

    :cond_0
    return v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ˑᵎ;->ﹳٴ:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ˑᵎ;->ⁱˊ(Lcom/google/android/gms/internal/measurement/ʼﹶ;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object v0
.end method

.method public final ˆʾ()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    return-void
.end method

.method public final ˈ(Lcom/google/android/gms/internal/measurement/ʼˋ;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ʼˋ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧˉ;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/ᐧˉ;-><init>(Lcom/google/android/gms/internal/measurement/ʼˋ;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ʼˎ(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ᐧˉ;)V

    return-void
.end method

.method public abstract ˉˆ(I)Ljava/lang/Object;
.end method

.method public final ˑﹳ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ()I
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵎﹶ(Lcom/google/android/gms/internal/measurement/ﾞי;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    return v0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵎﹶ(Lcom/google/android/gms/internal/measurement/ﾞי;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    return v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final ᵎﹶ()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ʽ:Lcom/google/android/gms/internal/measurement/ᵔᵔ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔᵔ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ˎˎ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ˈ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ﾞᴵ()V

    return-void
.end method

.method public final ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    return-object v0
.end method

.method public final ⁱˊ(Lcom/google/android/gms/internal/measurement/ˎˎ;)I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˑﹳ()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵎﹶ(Lcom/google/android/gms/internal/measurement/ﾞי;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/ˎˎ;->ᵎﹶ(Lcom/google/android/gms/internal/measurement/ﾞי;)I

    move-result p1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v0
.end method

.method public final ﾞᴵ()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʼﹶ;->zzb:I

    return-void
.end method
