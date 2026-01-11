.class public final Lʽᐧ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʽᐧ/ٴﹶ;


# instance fields
.field public final ⁱˊ:Z

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʽᐧ/ٴﹶ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lʽᐧ/ٴﹶ;-><init>(ZJ)V

    sput-object v0, Lʽᐧ/ٴﹶ;->ʽ:Lʽᐧ/ٴﹶ;

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lʽᐧ/ٴﹶ;->ﹳٴ:J

    iput-boolean p1, p0, Lʽᐧ/ٴﹶ;->ⁱˊ:Z

    return-void
.end method
