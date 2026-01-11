.class public final Lʽⁱ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:F

.field public ˑﹳ:F

.field public ⁱˊ:J

.field public ﹳٴ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lʽⁱ/ـˆ;->ﹳٴ:J

    iput-wide v0, p0, Lʽⁱ/ـˆ;->ⁱˊ:J

    iput-wide v0, p0, Lʽⁱ/ـˆ;->ʽ:J

    const v0, -0x800001

    iput v0, p0, Lʽⁱ/ـˆ;->ˈ:F

    iput v0, p0, Lʽⁱ/ـˆ;->ˑﹳ:F

    return-void
.end method


# virtual methods
.method public ﹳٴ()Lʽⁱ/ʾᵎ;
    .locals 1

    new-instance v0, Lʽⁱ/ʾᵎ;

    invoke-direct {v0, p0}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    return-object v0
.end method
