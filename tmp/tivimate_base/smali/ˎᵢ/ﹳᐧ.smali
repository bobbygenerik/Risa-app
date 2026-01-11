.class public final Lˎᵢ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lﹶˑ/ʼˎ;

.field public static final ˑﹳ:Lﹶˑ/ʼˎ;


# instance fields
.field public final ʽ:[Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶˑ/ʼˎ;

    const-string v1, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-direct {v0, v1}, Lﹶˑ/ʼˎ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    new-instance v0, Lﹶˑ/ʼˎ;

    const-string v1, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-direct {v0, v1}, Lﹶˑ/ʼˎ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ﹳᐧ;->ˑﹳ:Lﹶˑ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˎᵢ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˎᵢ/ﹳᐧ;->ʽ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˎᵢ/ﹳᐧ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ﹳᐧ;

    iget-object p1, p1, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v0, p0, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
