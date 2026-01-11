.class public final Landroidx/lifecycle/ᐧﾞ;
.super Landroidx/lifecycle/ˊˋ;
.source "SourceFile"


# static fields
.field public static ˈ:Landroidx/lifecycle/ᐧﾞ;

.field public static final ˑﹳ:Lᵎˉ/ⁱˊ;


# instance fields
.field public final ʽ:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/lifecycle/ˊˋ;-><init>(I)V

    iput-object p1, p0, Landroidx/lifecycle/ᐧﾞ;->ʽ:Landroid/app/Application;

    return-void
.end method

.method public static ˈ(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/ᵎᵔ;
    .locals 5

    .prologue
    const-string v0, "Cannot create an instance of "

    const-class v1, Landroidx/lifecycle/ﹳٴ;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ᵎᵔ;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʽ(Ljava/lang/Class;Lʼـ/ʽ;)Landroidx/lifecycle/ᵎᵔ;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ᐧﾞ;->ʽ:Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ᐧﾞ;->ﹳٴ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    invoke-virtual {p2, v0}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Landroidx/lifecycle/ᐧﾞ;->ˈ(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_1
    const-class p2, Landroidx/lifecycle/ﹳٴ;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CreationExtras must have an application by `APPLICATION_KEY`"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ᐧﾞ;->ʽ:Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroidx/lifecycle/ᐧﾞ;->ˈ(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
