.class public abstract synthetic Lˑʼ/ᐧﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ﹳٴ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˑﹳ(I)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lˑʼ/ᐧﹶ;->ﹳٴ:[I

    return-void
.end method
