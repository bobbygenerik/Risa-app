.class public abstract Lˊʼ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˊʼ/ʻٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊʼ/ʻٴ;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lˊʼ/ʻٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    return-void
.end method

.method public static ⁱˊ(Lˊʼ/ﾞʻ;)V
    .locals 0

    sget-object p0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;
    .locals 1

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˊʼ/ﾞᴵ;

    invoke-direct {v0, p0}, Lˊʼ/ﾞᴵ;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
