.class public final Lʼᵢ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lʼᵢ/ʼᐧ;


# instance fields
.field public final ʽ:J

.field public final ˈ:Lʻˆ/ﾞᴵ;

.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lʼᵢ/ʼᐧ;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lʼᵢ/ʼᐧ;-><init>(JJJ)V

    sput-object v0, Lʼᵢ/ʼᐧ;->ˑﹳ:Lʼᵢ/ʼᐧ;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lʼᵢ/ʼᐧ;->ﹳٴ:J

    iput-wide p3, p0, Lʼᵢ/ʼᐧ;->ⁱˊ:J

    iput-wide p5, p0, Lʼᵢ/ʼᐧ;->ʽ:J

    new-instance p1, Lʻˆ/ﾞᴵ;

    invoke-direct {p1}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object p1, p0, Lʼᵢ/ʼᐧ;->ˈ:Lʻˆ/ﾞᴵ;

    return-void
.end method
