.class public final Lﹳᵢ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lﹳᵢ/ﹳᐧ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lﹳᵢ/ﹳᐧ;->ﹳٴ:J

    return-void
.end method

.method public constructor <init>(Lـˊ/ᵔᵢ;)V
    .locals 2

    iget-object p1, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    return-void
.end method
