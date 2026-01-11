.class public final Lʽʿ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:I

.field public static final synthetic ﹳٴ:Lʽʿ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lʽʿ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʽʿ/ʼˎ;->ﹳٴ:Lʽʿ/ʼˎ;

    const/16 v0, 0x40

    int-to-long v2, v0

    const/4 v0, 0x1

    int-to-long v4, v0

    const v0, 0x7ffffffe

    int-to-long v6, v0

    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    invoke-static/range {v1 .. v7}, Lˊʽ/ⁱˊ;->ٴﹶ(Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lʽʿ/ʼˎ;->ⁱˊ:I

    return-void
.end method
