.class public final Lˋˋ/ﹶᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ⁱˊ:I

.field public final ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˋˋ/ﹶᐧ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Lˋˋ/ﹶᐧ;->ⁱˊ:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lˋˋ/ﹶᐧ;->ʽ:J

    iput-wide v0, p0, Lˋˋ/ﹶᐧ;->ˈ:J

    return-void
.end method
