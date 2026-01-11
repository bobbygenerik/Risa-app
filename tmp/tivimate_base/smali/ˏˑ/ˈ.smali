.class public final Lˏˑ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˏˑ/ˈ;

.field public static final ˈ:Lˏˑ/ˈ;

.field public static final ⁱˊ:Lˏˑ/ˈ;


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˏˑ/ˈ;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lˏˑ/ˈ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lˏˑ/ˈ;->ⁱˊ:Lˏˑ/ˈ;

    new-instance v0, Lˏˑ/ˈ;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lˏˑ/ˈ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lˏˑ/ˈ;->ʽ:Lˏˑ/ˈ;

    new-instance v0, Lˏˑ/ˈ;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lˏˑ/ˈ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lˏˑ/ˈ;->ˈ:Lˏˑ/ˈ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏˑ/ˈ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˏˑ/ˈ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
