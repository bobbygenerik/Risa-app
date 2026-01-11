.class public abstract synthetic Lˊʽ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lˊʽ/ˏי;->ﹳٴ:I

    return-void
.end method
