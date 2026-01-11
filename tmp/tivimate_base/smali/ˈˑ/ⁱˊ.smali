.class public final Lˈˑ/ⁱˊ;
.super Lˎᵔ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public ʽʽ:[B

.field public final ᴵˊ:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;[B)V
    .locals 1

    sget-object v0, Lˎᵔ/ﾞᴵ;->ﾞʻ:Lˎᵔ/ˑﹳ;

    invoke-direct {p0, v0}, Lˎᵔ/ⁱˊ;-><init>(Lˎᵔ/ﾞᴵ;)V

    iput-object p1, p0, Lˈˑ/ⁱˊ;->ᴵˊ:Ljava/util/HashSet;

    iput-object p2, p0, Lˈˑ/ⁱˊ;->ʽʽ:[B

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lˈˑ/ⁱˊ;->ᴵˊ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lˈˑ/ⁱˊ;->ᴵˊ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
