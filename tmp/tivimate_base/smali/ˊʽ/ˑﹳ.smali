.class public abstract Lˊʽ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    :try_start_0
    new-instance v0, Lᐧʼ/ⁱˊ;

    invoke-direct {v0}, Lᐧʼ/ⁱˊ;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lᐧʼ/ⁱˊ;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lʼᴵ/ˑﹳ;

    invoke-direct {v2, v1, v0}, Lʼᴵ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lʼᴵ/ﹳٴ;

    invoke-direct {v0, v2}, Lʼᴵ/ﹳٴ;-><init>(Lʼᴵ/ˑﹳ;)V

    invoke-static {v0}, Lʼᴵ/ᵔᵢ;->ٴʼ(Lʼᴵ/ﾞᴵ;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lˊʽ/ˑﹳ;->ﹳٴ:Ljava/util/List;

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
