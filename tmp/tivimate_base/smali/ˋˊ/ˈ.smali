.class public final Lˋˊ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˋˊ/ˈ;


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˋˊ/ˈ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v1, v2}, Lˋˊ/ˈ;-><init>(JJ)V

    sput-object v0, Lˋˊ/ˈ;->ʽ:Lˋˊ/ˈ;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˋˊ/ˈ;->ﹳٴ:J

    iput-wide p3, p0, Lˋˊ/ˈ;->ⁱˊ:J

    return-void
.end method
