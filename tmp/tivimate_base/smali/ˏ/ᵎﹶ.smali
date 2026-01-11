.class public final Lˏ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/HashSet;

.field public final ⁱˊ:Ljava/util/HashSet;

.field public final ﹳٴ:Lˏ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˏ/ⁱˊ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lˏ/ᵎﹶ;->ⁱˊ:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lˏ/ᵎﹶ;->ʽ:Ljava/util/HashSet;

    iput-object p1, p0, Lˏ/ᵎﹶ;->ﹳٴ:Lˏ/ⁱˊ;

    return-void
.end method
